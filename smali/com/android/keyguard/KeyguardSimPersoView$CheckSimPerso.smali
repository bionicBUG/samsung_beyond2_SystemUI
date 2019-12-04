.class abstract Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;
.super Ljava/lang/Thread;
.source "KeyguardSimPersoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPersoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPerso"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPersoView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPersoView;Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 199
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;->mPin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$KeyguardSimPersoView$CheckSimPerso(Z)V
    .locals 0

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;->onSimCheckResponse(Z)V

    return-void
.end method

.method public synthetic lambda$run$1$KeyguardSimPersoView$CheckSimPerso()V
    .locals 1

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;->onSimCheckResponse(Z)V

    return-void
.end method

.method abstract onSimCheckResponse(Z)V
.end method

.method public run()V
    .locals 6

    const-string v0, "KeyguardSimPersoView"

    const-wide/16 v1, 0x32

    :try_start_0
    const-string v3, "phone"

    .line 207
    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 209
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;->mPin:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->supplyPerso(Ljava/lang/String;)Z

    move-result v3

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckSimPerso supplyPerso returned : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    new-instance v5, Lcom/android/keyguard/-$$Lambda$KeyguardSimPersoView$CheckSimPerso$d64rEy6f8g946dJDu8FxW_x9z6A;

    invoke-direct {v5, p0, v3}, Lcom/android/keyguard/-$$Lambda$KeyguardSimPersoView$CheckSimPerso$d64rEy6f8g946dJDu8FxW_x9z6A;-><init>(Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;Z)V

    invoke-virtual {v4, v5, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "RemoteException for supplyPerso:"

    .line 216
    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;->this$0:Lcom/android/keyguard/KeyguardSimPersoView;

    new-instance v3, Lcom/android/keyguard/-$$Lambda$KeyguardSimPersoView$CheckSimPerso$VO9TNYPTxYOOyinKa5-Z_UHSkNM;

    invoke-direct {v3, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSimPersoView$CheckSimPerso$VO9TNYPTxYOOyinKa5-Z_UHSkNM;-><init>(Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void
.end method
