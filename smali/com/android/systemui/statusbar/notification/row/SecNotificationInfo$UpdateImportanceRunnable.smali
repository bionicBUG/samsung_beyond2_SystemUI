.class Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;
.super Ljava/lang/Object;
.source "SecNotificationInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateImportanceRunnable"
.end annotation


# instance fields
.field private final mAppUid:I

.field private final mChannelToUpdate:Landroid/app/NotificationChannel;

.field private final mCurrentImportance:I

.field private final mINotificationManager:Landroid/app/INotificationManager;

.field private final mNewImportance:I

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/INotificationManager;Ljava/lang/String;ILandroid/app/NotificationChannel;II)V
    .locals 0

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    .line 584
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;->mPackageName:Ljava/lang/String;

    .line 585
    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;->mAppUid:I

    .line 586
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 587
    iput p5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;->mCurrentImportance:I

    .line 588
    iput p6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;->mNewImportance:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;->mNewImportance:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 596
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 597
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;->mAppUid:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-interface {v0, v1, v2, p0}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    goto :goto_1

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;->mAppUid:I

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;->mNewImportance:I

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;->mCurrentImportance:I

    if-lt v3, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, v1, v2, p0}, Landroid/app/INotificationManager;->setNotificationsEnabledWithImportanceLockForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "InfoGuts"

    const-string v1, "Unable to update notification importance"

    .line 606
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
