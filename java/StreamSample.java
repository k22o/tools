import java.lang.Integer;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;


public class StreamSample {

    public static void main(String[] args) {

        
        // 中間操作：filter
        // 終端操作：for each
        Integer[] array = {1, 2, 3, 4, 5};
        List<Integer> list1 = Arrays.asList(array);
        list1.stream()
            .filter(i -> i%2 == 1)
            .forEach(i -> System.out.println(i));

        System.out.println("-----------------");

        // 中間操作：map
        // 中間操作：distinct: 重複をなくす
        // 終端操作：collect: 型変換
        List<String> list2 = Arrays.asList("日本", "英", "仏", "英");
        List result2 = list2.stream()
            .distinct()
            .map(s -> s + "語")
            .collect(Collectors.toList());
        result2.forEach(System.out::println);

        System.out.println("-----------------");
        
        // 中間操作：mapToInt
        // 終端操作：算術演算 (sum)
        List<String> list3 = Arrays.asList("あ", "い", "うえお");
        int result3 = list3.stream()
            .mapToInt(s -> s.length())
            .sum();
        System.out.println(result3);


        
    }

}