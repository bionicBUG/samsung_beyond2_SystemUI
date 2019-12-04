.class public Lcom/samsung/android/multiwindow/DragAndDropHelper;
.super Ljava/lang/Object;
.source "DragAndDropHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;,
        Lcom/samsung/android/multiwindow/DragAndDropHelper$RequesterType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mHandler:Landroid/os/Handler;

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mListener:Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;

.field private mRequesterType:I
    .annotation build Lcom/samsung/android/multiwindow/DragAndDropHelper$RequesterType;
    .end annotation
.end field

.field private mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropServer;

.field private mStub:Lcom/samsung/android/multiwindow/IDragAndDropClient;

.field private mTaskId:I

.field private mUnbinded:Z

.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowingMode:I
    .annotation build Landroid/app/WindowConfiguration$WindowingMode;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MW_DND_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;I)V
    .locals 2
    .param p4    # I
        .annotation build Lcom/samsung/android/multiwindow/DragAndDropHelper$RequesterType;
        .end annotation
    .end param

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mHandler:Landroid/os/Handler;

    .line 40
    new-instance v0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;-><init>(Lcom/samsung/android/multiwindow/DragAndDropHelper;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mStub:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mWindowingMode:I

    const/4 v1, -0x1

    .line 112
    iput v1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mTaskId:I

    .line 178
    new-instance v1, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper$2;-><init>(Lcom/samsung/android/multiwindow/DragAndDropHelper;)V

    iput-object v1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mConnection:Landroid/content/ServiceConnection;

    .line 148
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mView:Ljava/lang/ref/WeakReference;

    .line 149
    iput-object p2, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 150
    iput-object p3, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mListener:Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;

    .line 151
    iput p4, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mRequesterType:I

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mAppContext:Landroid/content/Context;

    .line 154
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mUnbinded:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->performDrag()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mListener:Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/multiwindow/DragAndDropHelper;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->disconnect()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Lcom/samsung/android/multiwindow/IDragAndDropServer;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropServer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/samsung/android/multiwindow/DragAndDropHelper;Lcom/samsung/android/multiwindow/IDragAndDropServer;)Lcom/samsung/android/multiwindow/IDragAndDropServer;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropServer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Lcom/samsung/android/multiwindow/IDragAndDropClient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mStub:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Landroid/graphics/Bitmap;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/multiwindow/DragAndDropHelper;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mRequesterType:I

    return p0
.end method

.method static synthetic access$800(Lcom/samsung/android/multiwindow/DragAndDropHelper;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mWindowingMode:I

    return p0
.end method

.method static synthetic access$900(Lcom/samsung/android/multiwindow/DragAndDropHelper;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mTaskId:I

    return p0
.end method

.method public static create(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;I)Lcom/samsung/android/multiwindow/DragAndDropHelper;
    .locals 2
    .param p3    # I
        .annotation build Lcom/samsung/android/multiwindow/DragAndDropHelper$RequesterType;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    sget-object v0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->TAG:Ljava/lang/String;

    const-string v1, "created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Lcom/samsung/android/multiwindow/DragAndDropHelper;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/multiwindow/DragAndDropHelper;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/samsung/android/multiwindow/DragAndDropHelper$DragClientListener;I)V

    return-object v0

    .line 138
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->TAG:Ljava/lang/String;

    const-string p1, "Parameters are should not be null."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private disconnect()V
    .locals 2

    .line 238
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mUnbinded:Z

    if-eqz v0, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mUnbinded:Z

    return-void
.end method

.method private performDrag()Z
    .locals 6

    .line 212
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 217
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    sget-object p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel drag : view.getWindowVisibility()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 222
    :cond_1
    new-instance v2, Landroid/content/ClipData$Item;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    const-string v4, "text/plain"

    .line 223
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 224
    new-instance v5, Landroid/content/ClipData;

    invoke-direct {v5, v3, v4, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 227
    new-instance v2, Landroid/view/View;

    iget-object p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mAppContext:Landroid/content/Context;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 228
    invoke-virtual {v2, v1, v1, p0, p0}, Landroid/view/View;->layout(IIII)V

    .line 229
    new-instance p0, Landroid/view/View$DragShadowBuilder;

    invoke-direct {p0, v2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v1, 0x0

    const/16 v2, 0x100

    .line 231
    invoke-virtual {v0, v5, p0, v1, v2}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result p0

    .line 233
    sget-object v0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSuccess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method


# virtual methods
.method public show()V
    .locals 3

    .line 168
    sget-object v0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show : mUnbinded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mUnbinded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.dnd.DragAndDropServerService"

    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mUnbinded:Z

    if-nez v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mAppContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method
