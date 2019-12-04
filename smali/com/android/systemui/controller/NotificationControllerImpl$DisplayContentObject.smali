.class public Lcom/android/systemui/controller/NotificationControllerImpl$DisplayContentObject;
.super Ljava/lang/Object;
.source "NotificationControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controller/NotificationControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayContentObject"
.end annotation


# instance fields
.field appName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appName"
    .end annotation
.end field

.field notiCount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notiCount"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/controller/NotificationControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controller/NotificationControllerImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/android/systemui/controller/NotificationControllerImpl$DisplayContentObject;->this$0:Lcom/android/systemui/controller/NotificationControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p2, p0, Lcom/android/systemui/controller/NotificationControllerImpl$DisplayContentObject;->appName:Ljava/lang/String;

    .line 479
    iput-object p3, p0, Lcom/android/systemui/controller/NotificationControllerImpl$DisplayContentObject;->notiCount:Ljava/lang/String;

    return-void
.end method
