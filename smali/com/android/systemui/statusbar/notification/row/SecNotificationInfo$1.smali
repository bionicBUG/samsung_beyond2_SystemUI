.class Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;
.super Ljava/lang/Object;
.source "SecNotificationInfo.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 167
    sget p1, Lcom/android/systemui/R$id;->block_radio_alert:I

    if-ne p2, p1, :cond_0

    .line 168
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$002(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto :goto_0

    .line 169
    :cond_0
    sget p1, Lcom/android/systemui/R$id;->block_radio_silent:I

    if-ne p2, p1, :cond_1

    .line 170
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$002(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Ljava/lang/Integer;)Ljava/lang/Integer;

    :cond_1
    :goto_0
    return-void
.end method
