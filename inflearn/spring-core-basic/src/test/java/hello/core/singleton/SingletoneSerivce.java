package hello.core.singleton;

public class SingletoneSerivce {

    private static final SingletoneSerivce instance = new SingletoneSerivce();

    public static SingletoneSerivce getInstance() {
        return instance;
    }

    private SingletoneSerivce() {

    }

    public void logic() {
        System.out.println("싱글톤 객체 호출");
    }

    public static void main(String[] args) {
        SingletoneSerivce.getInstance();
    }

}
