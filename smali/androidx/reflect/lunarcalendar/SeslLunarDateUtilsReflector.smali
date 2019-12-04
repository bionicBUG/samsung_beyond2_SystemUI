.class public Landroidx/reflect/lunarcalendar/SeslLunarDateUtilsReflector;
.super Ljava/lang/Object;
.source "SeslLunarDateUtilsReflector.java"


# static fields
.field private static mClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const-string v0, "com.samsung.android.app.calendar.utils.LunarDateUtils"

    .line 24
    sput-object v0, Landroidx/reflect/lunarcalendar/SeslLunarDateUtilsReflector;->mClassName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "com.android.calendar.event.widget.datetimepicker.LunarDateUtils"

    .line 26
    sput-object v0, Landroidx/reflect/lunarcalendar/SeslLunarDateUtilsReflector;->mClassName:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
