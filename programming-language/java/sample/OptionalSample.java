import java.util.Optional;

public class OptionalSample {

    public static void map() {
        final Optional<String> optional = Optional.of("hoge");
        final String result1 = optional.map(String::toUpperCase).orElse("fuga");
        System.out.println(result1); // hoge

        final Optional<String> optional2 = Optional.ofNullable(null);
        final String result2 = optional2.map(String::toUpperCase).orElse("fuga");
        System.out.println(result2); // fuga
    }

    public static void filter() {
        final Optional<String> optional = Optional.of("hoge");
        final String result1 = optional.filter(s -> s.length() > 3).orElse("fail");
        System.out.println(result1);

        final Optional<String> optional2 = Optional.empty();
        final String result2 = optional2.filter(s -> s.length() > 3).orElse("fail");
        System.out.println(result2); // fail
    }

    public static void main(String[] args) {
        map();
        filter();
    }

}
