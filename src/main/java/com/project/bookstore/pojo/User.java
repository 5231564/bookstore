package com.project.bookstore.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private int uid;
    private String account;
    private String password;
    private int identity;
    private String uname;
    private String himg;

}
