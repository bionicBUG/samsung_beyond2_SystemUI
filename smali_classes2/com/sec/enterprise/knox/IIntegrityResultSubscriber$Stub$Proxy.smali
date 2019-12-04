.class Lcom/sec/enterprise/knox/IIntegrityResultSubscriber$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIntegrityResultSubscriber.java"

# interfaces
.implements Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/IIntegrityResultSubscriber$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
