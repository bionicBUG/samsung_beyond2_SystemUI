.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$SecStatusBarWifiView$3XLrJzzq4aYD5JGBlc8lbHzRYAw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/SecStatusBarWifiView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/SecStatusBarWifiView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$SecStatusBarWifiView$3XLrJzzq4aYD5JGBlc8lbHzRYAw;->f$0:Lcom/android/systemui/statusbar/SecStatusBarWifiView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$SecStatusBarWifiView$3XLrJzzq4aYD5JGBlc8lbHzRYAw;->f$0:Lcom/android/systemui/statusbar/SecStatusBarWifiView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecStatusBarWifiView;->lambda$applyWifiState$0$SecStatusBarWifiView()V

    return-void
.end method
