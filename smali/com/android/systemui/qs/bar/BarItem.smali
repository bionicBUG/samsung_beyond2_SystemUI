.class public interface abstract Lcom/android/systemui/qs/bar/BarItem;
.super Ljava/lang/Object;
.source "BarItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/bar/BarItem$Callback;
    }
.end annotation


# static fields
.field public static final BAR_TYPE_ALWAYS_VISIBLE:I = 0x0

.field public static final BAR_TYPE_VISIBLE_ABOVE_TILES_WHEN_EXPANDED:I = 0x2

.field public static final BAR_TYPE_VISIBLE_BELOW_TILES_WHEN_EXPANDED:I = 0x1


# virtual methods
.method public abstract clearCallback()V
.end method

.method public abstract destroy()V
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getBarHeight()I
.end method

.method public abstract getBarView()Landroid/view/View;
.end method

.method public abstract getType()I
.end method

.method public abstract inflateViews(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract isListening()Z
.end method

.method public abstract onConfigChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract setCallback(Lcom/android/systemui/qs/bar/BarItem$Callback;)V
.end method

.method public abstract setExpanded(Z)V
.end method

.method public abstract setListening(Z)V
.end method

.method public abstract setPosition(F)V
.end method

.method public abstract setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
.end method
