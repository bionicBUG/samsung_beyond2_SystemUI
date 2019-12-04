.class public Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;
.super Ljava/lang/Object;
.source "ThemeParser.java"


# instance fields
.field private mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

.field private mParserMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    return-void
.end method

.method private getXml(Landroid/content/res/Resources;Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "animation"

    const-string v0, "xml"

    .line 58
    invoke-virtual {p1, p0, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private parseXml()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserMap:Ljava/util/HashMap;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getXpp()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 41
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setStartTag(Z)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 43
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setStartTag(Z)V

    .line 46
    :cond_1
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->getParser(Ljava/lang/String;)Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tagName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ThemeParser"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    invoke-virtual {v2, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;->parseAttribute(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V

    .line 52
    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public generateAnimationFromXml()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 28
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getApkContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->getXml(Landroid/content/res/Resources;Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setXpp(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 30
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->parseXml()V

    .line 31
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getComplexAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object p0

    return-object p0
.end method

.method protected generateParser(Ljava/lang/String;)Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;
    .locals 2

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "screen"

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    new-instance p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ScreenParser;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ScreenParser;-><init>()V

    return-object p0

    :cond_1
    const-string v0, "view"

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    new-instance p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ViewParser;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ViewParser;-><init>()V

    return-object p0

    :cond_2
    const-string v0, "scene"

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    new-instance p0, Lcom/android/systemui/wallpaper/theme/xmlparser/SceneParser;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/SceneParser;-><init>()V

    return-object p0

    .line 82
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->getAnimationTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 83
    new-instance v0, Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->getAnimationTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_4
    const-string p0, "frame"

    .line 84
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 85
    new-instance p0, Lcom/android/systemui/wallpaper/theme/xmlparser/FrameParser;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/FrameParser;-><init>()V

    return-object p0

    :cond_5
    const-string p0, "item"

    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 87
    new-instance p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ItemParser;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ItemParser;-><init>()V

    return-object p0

    :cond_6
    return-object v1
.end method

.method public getAnimationTagName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, "rotate"

    .line 97
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "translateY"

    const-string v3, "translateX"

    if-nez v1, :cond_2

    const-string v1, "parabola"

    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "sinX"

    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "sinY"

    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "round"

    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ellipse"

    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "alpha"

    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 105
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "scaleX"

    .line 106
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "scaleY"

    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ImageResource"

    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    goto :goto_1

    .line 109
    :cond_2
    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p1, "rotation"

    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p1, "x"

    goto :goto_1

    .line 113
    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p1, "y"

    :cond_5
    :goto_1
    return-object p1
.end method

.method protected getParser(Ljava/lang/String;)Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->generateParser(Ljava/lang/String;)Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 67
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
