-- CreateTable
CREATE TABLE `UserCourseState` (
    `userId` INTEGER NOT NULL,
    `courseId` INTEGER NOT NULL,
    `stateId` INTEGER NOT NULL,

    PRIMARY KEY (`userId`, `courseId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `UserCourseState` ADD CONSTRAINT `UserCourseState_stateId_fkey` FOREIGN KEY (`stateId`) REFERENCES `UserCourseStateMaster`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
