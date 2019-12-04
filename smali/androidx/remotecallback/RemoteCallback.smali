.class public Landroidx/remotecallback/RemoteCallback;
.super Ljava/lang/Object;
.source "RemoteCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/remotecallback/RemoteCallback$RemoteCallbackType;
    }
.end annotation


# static fields
.field public static final LOCAL:Landroidx/remotecallback/RemoteCallback;


# instance fields
.field private final mArguments:Landroid/os/Bundle;

.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private final mReceiverClass:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 151
    new-instance v6, Landroidx/remotecallback/RemoteCallback$1;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/remotecallback/RemoteCallback$1;-><init>(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v6, Landroidx/remotecallback/RemoteCallback;->LOCAL:Landroidx/remotecallback/RemoteCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroidx/remotecallback/RemoteCallback;->mContext:Landroid/content/Context;

    .line 80
    iput p2, p0, Landroidx/remotecallback/RemoteCallback;->mType:I

    .line 81
    iput-object p3, p0, Landroidx/remotecallback/RemoteCallback;->mIntent:Landroid/content/Intent;

    .line 82
    iput-object p4, p0, Landroidx/remotecallback/RemoteCallback;->mReceiverClass:Ljava/lang/String;

    .line 83
    iput-object p5, p0, Landroidx/remotecallback/RemoteCallback;->mArguments:Landroid/os/Bundle;

    return-void
.end method
