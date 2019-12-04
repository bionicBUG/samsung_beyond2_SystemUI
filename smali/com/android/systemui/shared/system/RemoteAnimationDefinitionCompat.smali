.class public Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;
.super Ljava/lang/Object;
.source "RemoteAnimationDefinitionCompat.java"


# instance fields
.field private final mWrapped:Landroid/view/RemoteAnimationDefinition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/view/RemoteAnimationDefinition;

    invoke-direct {v0}, Landroid/view/RemoteAnimationDefinition;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;->mWrapped:Landroid/view/RemoteAnimationDefinition;

    return-void
.end method
