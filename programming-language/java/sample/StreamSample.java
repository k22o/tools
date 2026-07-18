import java.lang.Integer;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class StreamSample {

    // 中間操作：filter
    // 終端操作：for each
    static void filter() {
        final Integer[] array = {1, 2, 3, 4, 5};
        final List<Integer> list = Arrays.asList(array);
        list.stream()
            .filter(i -> i%2 == 1)
            .forEach(i -> System.out.println(i));
    }

    // 中間操作：map
    // 中間操作：distinct: 重複をなくす
     // 終端操作：collect: 型変換
    static void map() {
        final List<String> list = Arrays.asList("日本", "英", "仏", "英");
        final List<String> result = list.stream()
            .distinct()
            .map(s -> s + "語")
            .collect(Collectors.toList());
        System.out.println(result);
    }


    // 中間操作：mapToInt
     // 終端操作：算術演算 (sum)
    static void mapToInt() {
        final List<String> list = Arrays.asList("あ", "い", "うえお");
        final int result = list.stream()
            .mapToInt(s -> s.length())
            .sum();
        System.out.println(result);
    }

    // 中間操作：filter
    // 終端操作：findFirst-条件を満たすうち配列の最初に見つかったもの
    static void findFirst() {
        final List<String> list = Arrays.asList("aa", "bb" , "ab");
        final Optional<String> result = list.stream()
            .filter(s -> s.contains("a"))
            .findFirst();
        System.out.println(result.get());
    }

    // any-match: どれか一致するならtrue    
    static void anyMatch() {
        final List<String> list = Arrays.asList("aa", "bb" , "cc");
        final boolean result = list.stream()
            .anyMatch(s -> s.contains("d"));
        System.out.println(result);
    }

    // flatmap: 配列の中に配列がある場合、それを展開する
    static void flatMap() {
        final List<String> list = Arrays.asList("a,a", "b,b" , "c,c");
        final List<String> result = list.stream()
            .flatMap(s -> Arrays.asList(s.split(",")).stream())
            .collect(Collectors.toList());
        System.out.println(result);
    }

    public static void main(String[] args) {
        filter();
        map();
        mapToInt();
        findFirst();
        anyMatch();
        flatMap();
    }

}