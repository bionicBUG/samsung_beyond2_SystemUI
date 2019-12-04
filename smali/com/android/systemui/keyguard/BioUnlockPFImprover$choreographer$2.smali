.class final Lcom/android/systemui/keyguard/BioUnlockPFImprover$choreographer$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BioUnlockPFImprover.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/BioUnlockPFImprover;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/Choreographer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/BioUnlockPFImprover$choreographer$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$choreographer$2;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$choreographer$2;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$choreographer$2;->INSTANCE:Lcom/android/systemui/keyguard/BioUnlockPFImprover$choreographer$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/Choreographer;
    .locals 0

    .line 51
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$choreographer$2;->invoke()Landroid/view/Choreographer;

    move-result-object p0

    return-object p0
.end method
