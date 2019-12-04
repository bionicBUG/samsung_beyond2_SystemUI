.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$7cVvDTXsTJO78HtZjkZay45j_XE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardFMMView;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardFMMView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$7cVvDTXsTJO78HtZjkZay45j_XE;->f$0:Lcom/android/keyguard/KeyguardFMMView;

    iput-object p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$7cVvDTXsTJO78HtZjkZay45j_XE;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$7cVvDTXsTJO78HtZjkZay45j_XE;->f$0:Lcom/android/keyguard/KeyguardFMMView;

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$7cVvDTXsTJO78HtZjkZay45j_XE;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/android/keyguard/KeyguardFMMView;->lambda$setFMMInfo$1$KeyguardFMMView(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
