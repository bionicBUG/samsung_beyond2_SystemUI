.class public Lcom/android/systemui/volume/util/DesktopManagerWrapper;
.super Ljava/lang/Object;
.source "DesktopManagerWrapper.java"


# instance fields
.field private final mDesktopManager:Lcom/android/systemui/util/DesktopManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    iput-object v0, p0, Lcom/android/systemui/volume/util/DesktopManagerWrapper;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    return-void
.end method


# virtual methods
.method public isStandalone()Z
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/volume/util/DesktopManagerWrapper;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result p0

    return p0
.end method
