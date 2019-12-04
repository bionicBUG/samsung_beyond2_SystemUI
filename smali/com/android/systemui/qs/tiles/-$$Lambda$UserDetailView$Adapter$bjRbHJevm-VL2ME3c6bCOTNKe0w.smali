.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$UserDetailView$Adapter$bjRbHJevm-VL2ME3c6bCOTNKe0w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$UserDetailView$Adapter$bjRbHJevm-VL2ME3c6bCOTNKe0w;->f$0:Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$UserDetailView$Adapter$bjRbHJevm-VL2ME3c6bCOTNKe0w;->f$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$UserDetailView$Adapter$bjRbHJevm-VL2ME3c6bCOTNKe0w;->f$0:Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$UserDetailView$Adapter$bjRbHJevm-VL2ME3c6bCOTNKe0w;->f$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->lambda$onClick$0$UserDetailView$Adapter(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    return-void
.end method
