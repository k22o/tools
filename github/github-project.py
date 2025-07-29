import requests
import json

# Githubのアクセストークン
with open('.github_token.txt', 'r') as f:
    token = f.read().strip()

# Github APIのURL
url = 'https://api.github.com/graphql'

headers = {
    'Authorization': f'Bearer {token}',
    'Content-Type': 'application/json',
}

query = """
query {
    repository(owner: "k22o", name: "tools") {
        projectV2(number: 1) {
            title
            items(first: 100) {
                totalCount
                pageInfo {
                    endCursor
                    hasNextPage
                }
                nodes {
                    id
                    fieldValues(first: 100) {
                        nodes {
                            ... on ProjectV2ItemFieldTextValue {
                                text
                                field {
                                    ... on ProjectV2FieldCommon {
                                        name
                                    }
                                }
                            }
                            ... on ProjectV2ItemFieldNumberValue {
                                number
                                field {
                                    ... on ProjectV2FieldCommon {
                                        name
                                    }
                                }
                            }
                            ... on ProjectV2ItemFieldDateValue {
                                date
                                field {
                                    ... on ProjectV2FieldCommon {
                                        name
                                    }
                                }
                            }
                            ... on ProjectV2ItemFieldSingleSelectValue {
                                name
                                field {
                                    ... on ProjectV2FieldCommon {
                                        name
                                    }
                                }
                            }
                            ... on ProjectV2ItemFieldIterationValue {
                                title
                                field {
                                    ... on ProjectV2FieldCommon {
                                        name
                                    }
                                }
                            }
                            ... on ProjectV2ItemFieldMilestoneValue {
                                milestone {
                                    title
                                }
                                field {
                                    ... on ProjectV2FieldCommon {
                                        name
                                    }
                                }
                            }
                        }
                    }
                    content {
                        ... on Issue {
                            databaseId
                            number
                            title
                            createdAt
                            updatedAt
                            closed
                        }
                    }
                }
            }
        }
    }
}
"""

# GraphQLリクエストを実行
response = requests.post(url, headers=headers, json={'query': query})

if response.status_code == 200:
    data = response.json()
    print(json.dumps(data, indent=2, ensure_ascii=False))
else:
    print(f"エラー: {response.status_code}")
    print(response.text)





