package cri.auth.buisness;

import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Service;

@Service("businessInterface")
public class BuisnessInterfaceImpl implements BusinessInterface {

	@Secured(value="ROLE_ADMIN")
	@Override
	public String adminOperatio(String ping) {
		
		return "Perfor admin operation with ping param: " + ping;
	}

}
