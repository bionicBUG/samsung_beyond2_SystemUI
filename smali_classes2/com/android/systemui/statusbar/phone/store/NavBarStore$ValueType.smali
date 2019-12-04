.class public final enum Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;
.super Ljava/lang/Enum;
.source "NavBarStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/store/NavBarStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;

.field public static final enum ICON_COLOR_UPDATE_TIME:Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 177
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;

    const/4 v1, 0x0

    const-string v2, "ICON_COLOR_UPDATE_TIME"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;->ICON_COLOR_UPDATE_TIME:Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;

    .line 176
    sget-object v2, Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;->ICON_COLOR_UPDATE_TIME:Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;->$VALUES:[Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;
    .locals 1

    .line 176
    const-class v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;
    .locals 1

    .line 176
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;->$VALUES:[Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;

    return-object v0
.end method
