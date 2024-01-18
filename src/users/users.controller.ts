import { Controller, Get, Post, Body } from '@nestjs/common';
import { UsersService } from './users.service';
import { User } from '@prisma/client';

@Controller('users')
export class UsersController {
  constructor(private readonly usersService: UsersService) {}

  @Get()
  async sayHello() {
    return 'hello';
  }

  @Post()
  async createUser(@Body() userData: User): Promise<User> {
    console.log('postData', userData);
    return this.usersService.createUser(userData);
  }
}
