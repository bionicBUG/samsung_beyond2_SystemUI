.class public interface abstract Lcom/android/systemui/qs/panelcolor/PanelColorManager;
.super Ljava/lang/Object;
.source "PanelColorManager.java"


# direct methods
.method public static getInstance()Lcom/android/systemui/qs/panelcolor/PanelColorManager;
    .locals 1

    .line 12
    invoke-static {}, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->getInstance()Lcom/android/systemui/qs/panelcolor/PanelColorManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getColorModel()Lcom/android/systemui/qs/panelcolor/PanelColorModel;
.end method

.method public abstract init(Landroid/view/ViewGroup;Landroid/content/res/Configuration;)V
.end method
