.class public final synthetic Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockManager$2$eSzAGHmJGWYnki0SLlrT5Hj8zUw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/pluginlock/PluginLockManager$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pluginlock/PluginLockManager$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockManager$2$eSzAGHmJGWYnki0SLlrT5Hj8zUw;->f$0:Lcom/android/systemui/pluginlock/PluginLockManager$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockManager$2$eSzAGHmJGWYnki0SLlrT5Hj8zUw;->f$0:Lcom/android/systemui/pluginlock/PluginLockManager$2;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager$2;->lambda$onUserSwitchComplete$0$PluginLockManager$2()V

    return-void
.end method
