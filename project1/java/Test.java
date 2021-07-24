public class Test {
    public static native void testMethod();

    public static void main(String[] args) {
        System.loadLibrary("native");
        testMethod();
    }
}