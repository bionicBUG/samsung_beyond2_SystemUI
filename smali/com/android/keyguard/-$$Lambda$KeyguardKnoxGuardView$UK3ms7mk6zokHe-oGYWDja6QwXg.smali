.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardKnoxGuardView$UK3ms7mk6zokHe-oGYWDja6QwXg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardKnoxGuardView$UK3ms7mk6zokHe-oGYWDja6QwXg;->f$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    iput-object p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardKnoxGuardView$UK3ms7mk6zokHe-oGYWDja6QwXg;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardKnoxGuardView$UK3ms7mk6zokHe-oGYWDja6QwXg;->f$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardKnoxGuardView$UK3ms7mk6zokHe-oGYWDja6QwXg;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->lambda$setKnoxGuardInfo$4$KeyguardKnoxGuardView(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
