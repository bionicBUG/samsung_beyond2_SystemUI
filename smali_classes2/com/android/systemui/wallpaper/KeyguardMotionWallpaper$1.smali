.class Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;
.super Landroid/os/AsyncTask;
.source "KeyguardMotionWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->updateWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 184
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x0

    .line 191
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 194
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->mIsPreview:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "motion"

    const-string v2, "KeyguardMotionWallpaper"

    if-eqz v0, :cond_1

    .line 195
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$000(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$002(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$202(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLockWallpaperType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 205
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$400(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/WallpaperManager;->getMotionWallpaperPkgName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$002(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$202(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$002(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getPreloadWallpaperColorCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$202(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$200(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getDeviceColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$202(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$200(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getDefaultColorCodeFromResource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$202(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "Color Code is not set, so set default color code."

    .line 215
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :cond_3
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$000(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$502(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Landroid/content/Context;)Landroid/content/Context;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 224
    :catch_0
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NameNotFoundException mPkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$000(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$500(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$200(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "layout"

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$000(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkg name ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$000(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") xml name("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$200(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_4

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR - chosen xml name("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$200(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") resource is not exist !!!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 233
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$600(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$000(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$000(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$700(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p0, "XML already parsed"

    .line 234
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 236
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$600(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 237
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->recycleBitmap()V

    .line 239
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$602(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;I)I

    .line 240
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$000(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$702(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$500(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 242
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$800(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 254
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception p0

    .line 251
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception p0

    .line 248
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception p0

    .line 245
    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :goto_2
    return-object p1
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 184
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->onCancelled(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onCancelled(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
            ">;)V"
        }
    .end annotation

    const-string p0, "KeyguardMotionWallpaper"

    const-string v0, "parent asyncTask cancelled!"

    .line 409
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 411
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layerList size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 414
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v2, p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setBitmapLoaded(Z)V

    .line 415
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 416
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->recycle()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 184
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "KeyguardMotionWallpaper"

    if-eqz p1, :cond_2

    .line 261
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v1, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$902(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string p1, "PARSE FINISH - BITMAP LOAD START"

    .line 271
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 276
    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;)V

    .line 402
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$1500(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    const-string p0, "PARSE FAILED"

    .line 263
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
