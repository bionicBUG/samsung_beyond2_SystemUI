.class public Lcom/android/systemui/qs/panelcolor/PanelColorNightModeStrategy;
.super Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;
.source "PanelColorNightModeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/panelcolor/PanelColorNightModeStrategy$NightPanelColorModel;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public loadCommonColors(Landroid/view/ViewGroup;)Lcom/android/systemui/qs/panelcolor/PanelColorModel;
    .locals 1

    .line 15
    new-instance v0, Lcom/android/systemui/qs/panelcolor/PanelColorNightModeStrategy$NightPanelColorModel;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/panelcolor/PanelColorNightModeStrategy$NightPanelColorModel;-><init>(Lcom/android/systemui/qs/panelcolor/PanelColorNightModeStrategy;Landroid/content/Context;)V

    return-object v0
.end method

.method public updateCommonColorDraw(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method
