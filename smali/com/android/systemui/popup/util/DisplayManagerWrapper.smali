.class public Lcom/android/systemui/popup/util/DisplayManagerWrapper;
.super Ljava/lang/Object;
.source "DisplayManagerWrapper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/systemui/popup/util/DisplayManagerWrapper;->mContext:Landroid/content/Context;

    .line 15
    iget-object p1, p0, Lcom/android/systemui/popup/util/DisplayManagerWrapper;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/popup/util/DisplayManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method
