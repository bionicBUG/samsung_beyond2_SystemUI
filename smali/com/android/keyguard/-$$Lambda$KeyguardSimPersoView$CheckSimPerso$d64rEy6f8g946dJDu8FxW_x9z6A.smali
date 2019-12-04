.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardSimPersoView$CheckSimPerso$d64rEy6f8g946dJDu8FxW_x9z6A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSimPersoView$CheckSimPerso$d64rEy6f8g946dJDu8FxW_x9z6A;->f$0:Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

    iput-boolean p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSimPersoView$CheckSimPerso$d64rEy6f8g946dJDu8FxW_x9z6A;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSimPersoView$CheckSimPerso$d64rEy6f8g946dJDu8FxW_x9z6A;->f$0:Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

    iget-boolean p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSimPersoView$CheckSimPerso$d64rEy6f8g946dJDu8FxW_x9z6A;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;->lambda$run$0$KeyguardSimPersoView$CheckSimPerso(Z)V

    return-void
.end method
