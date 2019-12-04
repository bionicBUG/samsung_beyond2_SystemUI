.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$QSClockBellTower$TimeBroadcastReceiver$1Nq3srMBvueYlIs_kULX900uaoI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$QSClockBellTower$TimeBroadcastReceiver$1Nq3srMBvueYlIs_kULX900uaoI;->f$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$QSClockBellTower$TimeBroadcastReceiver$1Nq3srMBvueYlIs_kULX900uaoI;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$QSClockBellTower$TimeBroadcastReceiver$1Nq3srMBvueYlIs_kULX900uaoI;->f$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$QSClockBellTower$TimeBroadcastReceiver$1Nq3srMBvueYlIs_kULX900uaoI;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->lambda$onReceive$0$QSClockBellTower$TimeBroadcastReceiver(Ljava/lang/String;)V

    return-void
.end method
