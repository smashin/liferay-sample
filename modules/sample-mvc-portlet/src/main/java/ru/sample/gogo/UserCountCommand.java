package ru.sample.gogo;

import com.liferay.portal.kernel.service.UserLocalService;
import com.liferay.portal.kernel.service.UserService;
import org.osgi.service.component.annotations.Component;
import org.osgi.service.component.annotations.Reference;

@Component(
        property = {
                "osgi.command.function=usercount",
                "osgi.command.scope=sample"
        },
        service = Object.class
)
public class UserCountCommand {
    @Reference
    private UserLocalService userLocalService;

    public void usercount(){
        System.out.println("User count:" + userLocalService.getUsersCount());
    }
}
