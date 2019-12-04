.class Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$3;
.super Ljava/lang/Object;
.source "SliceLiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;


# virtual methods
.method public run()V
    .locals 0

    .line 293
    iget-object p0, p0, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceLiveData$CachedSliceLiveData;->updateSlice()V

    return-void
.end method
