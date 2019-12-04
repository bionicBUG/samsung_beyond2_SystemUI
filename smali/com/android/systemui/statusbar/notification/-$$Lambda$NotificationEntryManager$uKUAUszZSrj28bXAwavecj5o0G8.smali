.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$uKUAUszZSrj28bXAwavecj5o0G8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$uKUAUszZSrj28bXAwavecj5o0G8;->f$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationEntryManager$uKUAUszZSrj28bXAwavecj5o0G8;->f$0:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->lambda$new$1$NotificationEntryManager()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    return-object p0
.end method
