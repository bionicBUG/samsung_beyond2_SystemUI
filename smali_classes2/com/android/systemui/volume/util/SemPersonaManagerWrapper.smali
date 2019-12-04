.class public Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;
.super Ljava/lang/Object;
.source "SemPersonaManagerWrapper.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isKioskModeEnabled()Z
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
