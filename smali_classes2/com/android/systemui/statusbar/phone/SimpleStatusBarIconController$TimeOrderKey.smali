.class public Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;
.super Ljava/lang/Object;
.source "SimpleStatusBarIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeOrderKey"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

.field when:J


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;Ljava/lang/String;J)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;->key:Ljava/lang/String;

    .line 38
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;->when:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;Ljava/lang/String;JLcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;-><init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;Ljava/lang/String;J)V

    return-void
.end method
