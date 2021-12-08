import java.lang.Runnable;
import java.lang.Thread;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ThreadSample {
    public static void main(String[] args) {


        // ThreadクラスまたはRunnableインターフェースを利用して実行
        CustomThread t1 = new CustomThread();
        Thread t2 = new Thread(new CustomRunnable());
        t1.start();
        t2.start();

        try {
            Thread.sleep(5000);
        } catch (InterruptedException exception) {
            exception.printStackTrace();
        }

        System.out.println("-----------------");

        //ExecutorServiceを利用して実行
        ExecutorService service = Executors.newFixedThreadPool(3);
        service.submit(new CustomRunnable());
        service.submit(new CustomRunnable());
        service.submit(new CustomRunnable());
        service.shutdown();
    }
}


public class CustomThread extends Thread {
    @Override
    public void run() {
        System.out.println("CustomThread-strat");
        for(int i = 0; i < 2; i++) {
            try {
                Thread.sleep(1000);
            } catch(InterruptedException exception) {
            }
            System.out.println("CustomThread-count:" + i);
        }
    }
}

public class CustomRunnable implements Runnable {
    @Override
    public void run() {
        System.out.println("CustomThread-strat");
        for(int i = 0; i < 2; i++) {
            try {
                Thread.sleep(1500);
            } catch(InterruptedException exception) {
            }
            System.out.println("CustomRunnable-count:" + i);
        }
    }
}


