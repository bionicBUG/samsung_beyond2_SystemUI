.class public interface abstract Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;
.super Ljava/lang/Object;
.source "DragAndDropHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/DragAndDropHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DragClientListener"
.end annotation


# virtual methods
.method public abstract onDragEnd(IZ)V
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
.end method

.method public abstract onDragStart()V
.end method
