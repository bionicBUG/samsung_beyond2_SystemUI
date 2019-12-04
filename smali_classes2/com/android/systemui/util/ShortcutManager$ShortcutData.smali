.class Lcom/android/systemui/util/ShortcutManager$ShortcutData;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortcutData"
.end annotation


# instance fields
.field enabled:Z

.field mAppLabel:Ljava/lang/String;

.field mComponentName:Landroid/content/ComponentName;

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field shortcutProperty:I

.field taskName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 767
    iput-object v0, p0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/util/ShortcutManager$1;)V
    .locals 0

    .line 764
    invoke-direct {p0}, Lcom/android/systemui/util/ShortcutManager$ShortcutData;-><init>()V

    return-void
.end method
