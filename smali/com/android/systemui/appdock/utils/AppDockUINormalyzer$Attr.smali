.class public final enum Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;
.super Ljava/lang/Enum;
.source "AppDockUINormalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Attr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

.field public static final enum BOTTOM_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

.field public static final enum HEIGHT:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

.field public static final enum LEFT_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

.field public static final enum RIGHT_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

.field public static final enum TOP_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

.field public static final enum WIDTH:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 38
    new-instance v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    const/4 v1, 0x0

    const-string v2, "WIDTH"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->WIDTH:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    new-instance v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    const/4 v2, 0x1

    const-string v3, "HEIGHT"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->HEIGHT:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    new-instance v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    const/4 v3, 0x2

    const-string v4, "LEFT_MARGIN"

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->LEFT_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    new-instance v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    const/4 v4, 0x3

    const-string v5, "TOP_MARGIN"

    invoke-direct {v0, v5, v4}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->TOP_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    new-instance v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    const/4 v5, 0x4

    const-string v6, "RIGHT_MARGIN"

    invoke-direct {v0, v6, v5}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->RIGHT_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    new-instance v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    const/4 v6, 0x5

    const-string v7, "BOTTOM_MARGIN"

    invoke-direct {v0, v7, v6}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->BOTTOM_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    .line 37
    sget-object v7, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->WIDTH:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    aput-object v7, v0, v1

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->HEIGHT:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->LEFT_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->TOP_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->RIGHT_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->BOTTOM_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->$VALUES:[Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;
    .locals 1

    .line 37
    const-class v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;
    .locals 1

    .line 37
    sget-object v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->$VALUES:[Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    invoke-virtual {v0}, [Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    return-object v0
.end method
