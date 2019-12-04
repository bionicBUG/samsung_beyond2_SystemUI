.class Lcom/android/systemui/facewidget/FaceWidgetAttribute$Attribute;
.super Ljava/lang/Object;
.source "FaceWidgetAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/FaceWidgetAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Attribute"
.end annotation


# instance fields
.field mMinTopMargin:[I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 185
    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetAttribute$Attribute;->mMinTopMargin:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/facewidget/FaceWidgetAttribute$1;)V
    .locals 0

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetAttribute$Attribute;-><init>()V

    return-void
.end method
