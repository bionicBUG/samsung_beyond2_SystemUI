.class public final synthetic Lcom/android/systemui/wallpaper/-$$Lambda$WallpaperEventNotifier$_jZlKC2-Kwqicqa4mgk2AMFXwd4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/io/PrintWriter;

.field private final synthetic f$1:Ljava/text/DateFormat;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/text/DateFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/-$$Lambda$WallpaperEventNotifier$_jZlKC2-Kwqicqa4mgk2AMFXwd4;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/-$$Lambda$WallpaperEventNotifier$_jZlKC2-Kwqicqa4mgk2AMFXwd4;->f$1:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/-$$Lambda$WallpaperEventNotifier$_jZlKC2-Kwqicqa4mgk2AMFXwd4;->f$0:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/-$$Lambda$WallpaperEventNotifier$_jZlKC2-Kwqicqa4mgk2AMFXwd4;->f$1:Ljava/text/DateFormat;

    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->lambda$dump$0(Ljava/io/PrintWriter;Ljava/text/DateFormat;Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;)V

    return-void
.end method
