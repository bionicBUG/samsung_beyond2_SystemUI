.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$TQZkwwkE387Nv2xAClQZ48V0aMI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$TQZkwwkE387Nv2xAClQZ48V0aMI;->f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$TQZkwwkE387Nv2xAClQZ48V0aMI;->f$1:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$TQZkwwkE387Nv2xAClQZ48V0aMI;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$TQZkwwkE387Nv2xAClQZ48V0aMI;->f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$TQZkwwkE387Nv2xAClQZ48V0aMI;->f$1:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$TQZkwwkE387Nv2xAClQZ48V0aMI;->f$2:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->lambda$getSettingsOnClickListener$3(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;ILandroid/view/View;)V

    return-void
.end method
