.class Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;
.super Ljava/lang/Object;
.source "SdpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/sdp/SdpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpEvent"
.end annotation


# instance fields
.field private mMessage:Landroid/os/Message;

.field final synthetic this$0:Lcom/samsung/android/knox/sdp/SdpUtil;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/sdp/SdpUtil;I)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 234
    iput-object p1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;->this$0:Lcom/samsung/android/knox/sdp/SdpUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;->mMessage:Landroid/os/Message;

    .line 236
    iget-object p1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;->mMessage:Landroid/os/Message;

    iput p2, p1, Landroid/os/Message;->what:I

    .line 237
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getMessage()Landroid/os/Message;
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 242
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;->mMessage:Landroid/os/Message;

    return-object p0
.end method
