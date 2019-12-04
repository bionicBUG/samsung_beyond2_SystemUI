.class final Lcom/android/systemui/keyguard/BioUnlockPFImprover$statusBarListener$1;
.super Ljava/lang/Object;
.source "BioUnlockPFImprover.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/BioUnlockPFImprover;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/BioUnlockPFImprover;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$statusBarListener$1;->this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$statusBarListener$1;->this$0:Lcom/android/systemui/keyguard/BioUnlockPFImprover;

    invoke-static {p0, p5}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->access$statusBarHandler(Lcom/android/systemui/keyguard/BioUnlockPFImprover;I)V

    return-void
.end method
