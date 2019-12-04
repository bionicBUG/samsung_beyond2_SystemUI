.class public final enum Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;
.super Ljava/lang/Enum;
.source "FaceWidgetPageLocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

.field public static final enum FULLSCREEN:Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

.field public static final enum LOCKSCREEN:Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 23
    new-instance v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    const/4 v1, 0x0

    const-string v2, "LOCKSCREEN"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;->LOCKSCREEN:Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    .line 24
    new-instance v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    const/4 v2, 0x1

    const-string v3, "FULLSCREEN"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;->FULLSCREEN:Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    .line 22
    sget-object v3, Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;->LOCKSCREEN:Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;->FULLSCREEN:Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;->$VALUES:[Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;
    .locals 1

    .line 22
    const-class v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;
    .locals 1

    .line 22
    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;->$VALUES:[Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    invoke-virtual {v0}, [Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    return-object v0
.end method
