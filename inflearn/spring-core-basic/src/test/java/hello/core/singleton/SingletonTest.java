package hello.core.singleton;

import hello.core.AppConfig;
import hello.core.member.MemberService;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import static org.assertj.core.api.Assertions.*;

public class SingletonTest {

    @Test
    @DisplayName("스프링 없는 순수한 DI 컨테이너")
    void pureContainer() {
        AppConfig appConfig = new AppConfig();

        MemberService memberService1 = appConfig.memberService();

        MemberService memberService2 = appConfig.memberService();

        System.out.println("memberService1 = " + memberService1);
        System.out.println("memberService2 = " + memberService2);

        assertThat(memberService1).isNotSameAs(memberService2);
    }

    @Test
    @DisplayName("싱글톤 패턴을 이용한 객체 사용")
    void singletonSerivceTest() {
        SingletoneSerivce singletoneSerivce1 = SingletoneSerivce.getInstance();
        SingletoneSerivce singletoneSerivce2 = SingletoneSerivce.getInstance();

        System.out.println("memberService1 = " + singletoneSerivce1);
        System.out.println("memberService2 = " + singletoneSerivce2);

        assertThat(singletoneSerivce1).isSameAs(singletoneSerivce2);

    }

    @Test
    @DisplayName("스프링 컨테이너와 싱글톤")
    void springContainer() {
        AnnotationConfigApplicationContext appConfig =
                new AnnotationConfigApplicationContext(AppConfig.class);

        MemberService memberService1 = appConfig.getBean("memberService", MemberService.class);

        MemberService memberService2 = appConfig.getBean("memberService", MemberService.class);

        System.out.println("memberService1 = " + memberService1);
        System.out.println("memberService2 = " + memberService2);

        assertThat(memberService1).isSameAs(memberService2);
    }


}
