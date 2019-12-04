.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$lmKY7mN2WjpkZrfc5JrwQGQJ03c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private final synthetic f$2:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$lmKY7mN2WjpkZrfc5JrwQGQJ03c;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$lmKY7mN2WjpkZrfc5JrwQGQJ03c;->f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$lmKY7mN2WjpkZrfc5JrwQGQJ03c;->f$2:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;Landroid/app/NotificationChannel;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$lmKY7mN2WjpkZrfc5JrwQGQJ03c;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$lmKY7mN2WjpkZrfc5JrwQGQJ03c;->f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$lmKY7mN2WjpkZrfc5JrwQGQJ03c;->f$2:Landroid/service/notification/StatusBarNotification;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->lambda$getOnSettingsClick$2$NotificationGutsManager(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;Landroid/view/View;Landroid/app/NotificationChannel;I)V

    return-void
.end method
