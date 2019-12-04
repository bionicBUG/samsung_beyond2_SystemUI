.class public Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;
.super Ljava/lang/Object;
.source "NavBarIconResourceMapper.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

.field mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

.field mIsRTL:Z

.field mIsThemeDefault:Z

.field mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

.field mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field mOTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

.field mOriginalTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

.field mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;Lcom/android/systemui/statusbar/phone/store/NavBarStore;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/util/LogWrapper;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    .line 52
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    .line 53
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    .line 54
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->initData()V

    return-void
.end method

.method private determineThemeType()Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;
    .locals 6

    const-string v0, "NavBarIconResourceMapper"

    .line 254
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mIsThemeDefault:Z

    if-nez v1, :cond_0

    .line 255
    sget-object p0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-object p0

    .line 263
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$bool;->navigation_bar_theme_apply_image_icon_tint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "updateOpenThemeIcon OpenThemeTintResource NotFoundException"

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    .line 269
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$drawable;->ic_sysbar_back_theme:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$drawable;->ic_sysbar_docked_theme:I

    .line 270
    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$drawable;->ic_sysbar_back_ime_theme:I

    .line 271
    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$drawable;->ic_sysbar_home_theme:I

    .line 272
    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$drawable;->ic_sysbar_recent_theme:I

    .line 273
    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    .line 276
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$drawable;->ic_sysbar_back_dark_theme:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$drawable;->ic_sysbar_docked_dark_theme:I

    .line 277
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$drawable;->ic_sysbar_back_ime_dark_theme:I

    .line 278
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$drawable;->ic_sysbar_home_dark_theme:I

    .line 279
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$drawable;->ic_sysbar_recent_dark_theme:I

    .line 280
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p0, :cond_2

    move v1, v3

    goto :goto_2

    :catch_1
    move v2, v1

    .line 284
    :catch_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateOpenThemeIcon OpenThemeIconResource NotFoundExceptionLightThemeIcon : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", DarkThemeIcon : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 290
    sget-object p0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_O:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-object p0

    .line 292
    :cond_3
    sget-object p0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-object p0
.end method

.method private getIconResourceArray(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)[Lcom/samsung/systemui/splugins/navigationbar/IconResource;
    .locals 28

    move-object/from16 v0, p0

    .line 75
    sget-object v1, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper$1;->$SwitchMap$com$samsung$systemui$splugins$navigationbar$IconThemeType:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v3, 0xc

    const/16 v4, 0xb

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/16 v14, 0x10

    const/4 v15, 0x2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-eq v1, v15, :cond_0

    .line 115
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "NavBarIconResourceMapper"

    const-string v3, "getIconResourceArray() Invalid IconThemeType return TYPE_DEFAULT"

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getIconResourceArray(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)[Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v14, [Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    .line 96
    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v18, Lcom/android/systemui/R$drawable;->ic_sysbar_back_theme:I

    sget v19, Lcom/android/systemui/R$drawable;->ic_sysbar_back_dark_theme:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v13

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v24, Lcom/android/systemui/R$drawable;->ic_sysbar_back_theme:I

    sget v25, Lcom/android/systemui/R$drawable;->ic_sysbar_back_dark_theme:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v18, Lcom/android/systemui/R$drawable;->ic_sysbar_back_ime_theme:I

    sget v19, Lcom/android/systemui/R$drawable;->ic_sysbar_back_ime_dark_theme:I

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v15

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v24, Lcom/android/systemui/R$drawable;->ic_sysbar_back_ime_theme:I

    sget v25, Lcom/android/systemui/R$drawable;->ic_sysbar_back_ime_dark_theme:I

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v12

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v14, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v15, Lcom/android/systemui/R$drawable;->ic_sysbar_home_theme:I

    sget v16, Lcom/android/systemui/R$drawable;->ic_sysbar_home_dark_theme:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v11

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v20, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v21, Lcom/android/systemui/R$drawable;->ic_sysbar_recent_theme:I

    sget v22, Lcom/android/systemui/R$drawable;->ic_sysbar_recent_dark_theme:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v24}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v10

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v12, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_DOCKED:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v13, Lcom/android/systemui/R$drawable;->ic_sysbar_docked_theme:I

    sget v14, Lcom/android/systemui/R$drawable;->ic_sysbar_docked_dark_theme:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v9

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v18, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v19, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_ime:I

    sget v20, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_ime_dark:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v22}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v10, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_MENU:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v11, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_menu:I

    sget v12, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_menu_dark:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v16, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v17, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_accessibility_button:I

    sget v18, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_accessibility_button_dark:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v1

    invoke-direct/range {v15 .. v20}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v8, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RESTART:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v9, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_fullscreen:I

    sget v10, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_fullscreen_dark:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v14, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HANDLE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v15, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_gesture_handle_hint:I

    sget v16, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_gesture_handle_hint_dark:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v6, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v7, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_gesture_hint:I

    sget v8, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_gesture_hint_dark:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v12, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v14, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_gesture_hint_vi:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v1

    move v13, v14

    invoke-direct/range {v11 .. v16}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v1, 0xe

    new-instance v8, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v3, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SHOW_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v4, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_navi_show:I

    sget v5, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_navi_show_dark:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v8, v0, v1

    const/16 v1, 0xf

    new-instance v8, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v3, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HIDE_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v4, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_navi_hide:I

    sget v5, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_navi_hide_dark:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v8, v0, v1

    return-object v0

    :cond_1
    new-array v0, v14, [Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    .line 77
    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v18, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_back:I

    sget v19, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_back_dark:I

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v13

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v24, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_back:I

    sget v25, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_back_dark:I

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v17, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v18, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_back_ime:I

    sget v19, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_back_ime_dark:I

    const/16 v20, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v15

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v23, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v24, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_back_ime:I

    sget v25, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_back_ime_dark:I

    const/16 v26, 0x0

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v27}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v12

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v14, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v15, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_home:I

    sget v16, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_home_dark:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v11

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v20, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v21, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_recent:I

    sget v22, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_recent_dark:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v24}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v10

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v12, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_DOCKED:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v13, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_docked:I

    sget v14, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_docked_dark:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v9

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v18, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v19, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_ime:I

    sget v20, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_ime_dark:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v22}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v10, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_MENU:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v11, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_menu:I

    sget v12, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_menu_dark:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v16, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v17, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_accessibility_button:I

    sget v18, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_accessibility_button_dark:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v1

    invoke-direct/range {v15 .. v20}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v8, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RESTART:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v9, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_fullscreen:I

    sget v10, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_fullscreen_dark:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v14, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HANDLE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v15, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_gesture_handle_hint:I

    sget v16, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_gesture_handle_hint_dark:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v6, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v7, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_gesture_hint:I

    sget v8, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_gesture_hint_dark:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v12, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v14, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_gesture_hint_vi:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v1

    move v13, v14

    invoke-direct/range {v11 .. v16}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v1, 0xe

    new-instance v8, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v3, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SHOW_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v4, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_navi_show:I

    sget v5, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_navi_show_dark:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v8, v0, v1

    const/16 v1, 0xf

    new-instance v8, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    sget-object v3, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HIDE_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    sget v4, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_navi_hide:I

    sget v5, Lcom/android/systemui/R$drawable;->ic_sec_sysbar_navi_hide_dark:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/systemui/splugins/navigationbar/IconResource;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconType;IIZZ)V

    aput-object v8, v0, v1

    return-object v0
.end method

.method private getIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;
    .locals 4

    .line 65
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconTheme;

    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/navigationbar/IconTheme;-><init>(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getIconResourceArray(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)[Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object p0

    .line 68
    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p0, v1

    .line 69
    iget-object v3, v2, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v3, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->addData(Lcom/samsung/systemui/splugins/navigationbar/IconType;Lcom/samsung/systemui/splugins/navigationbar/IconResource;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initData()V
    .locals 1

    .line 59
    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mOriginalTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    .line 60
    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    .line 61
    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_O:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->getIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mOTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    return-void
.end method

.method private isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z
    .locals 0

    .line 250
    iget-object p0, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object p1

    goto :goto_0

    .line 135
    :cond_0
    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_O:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v0, v1, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mOTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object p1

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "NavBarIconResourceMapper"

    const-string v2, "no icon theme type define make theme default"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object p1

    .line 142
    :goto_0
    iget-boolean v0, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mNeedRtlCheck:Z

    if-eqz v0, :cond_2

    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mIsRTL:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 145
    :goto_1
    iget-boolean v1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mIsOldTint:Z

    if-eqz v0, :cond_4

    .line 152
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget p1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    invoke-interface {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getRtlKeyButtonDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    goto :goto_2

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getRtlKeyButtonDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_4
    if-eqz v1, :cond_5

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget p1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getOpenThemeTintDrawable(Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0

    .line 158
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget p1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    invoke-interface {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getKeyButtonDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    goto :goto_3

    .line 160
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getKeyButtonDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    return-object p0
.end method

.method public getGestureHandleDrawable()Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;
    .locals 6

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    const-string v2, "NavBarIconResourceMapper"

    if-ne v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HANDLE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_0
    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_O:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mOTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HANDLE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "no icon theme type define make theme default"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HANDLE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 178
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 179
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v5, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    invoke-interface {v3, v4, v5, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;III)Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    move-result-object p0

    goto :goto_1

    .line 180
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v3, v4, v5, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 182
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v3, "HintDrawable not found exception"

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HANDLE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    .line 184
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 185
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    invoke-interface {v2, p0, v3, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;III)Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    move-result-object p0

    goto :goto_1

    .line 186
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2, p0, v3, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getGestureHintDrawable(I)Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;
    .locals 5

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    const-string v2, "NavBarIconResourceMapper"

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_0
    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_O:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v0, v1, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mOTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "no icon theme type define make theme default"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    .line 207
    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    invoke-interface {v1, v3, v4, v0, p1}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;III)Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    move-result-object p0

    goto :goto_1

    .line 209
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v3, v4, v0, p1}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 211
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "HintDrawable not found exception"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    .line 213
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 214
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v2, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    invoke-interface {v1, p0, v2, v0, p1}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;III)Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    move-result-object p0

    goto :goto_1

    .line 215
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, p0, v2, v0, p1}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getGestureHintViDrawable(I)Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;
    .locals 5

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    const-string v2, "NavBarIconResourceMapper"

    if-ne v0, v1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    goto :goto_0

    .line 226
    :cond_0
    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_O:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    if-ne v0, v1, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mOTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "no icon theme type define make theme default"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    .line 235
    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    invoke-interface {v1, v3, v4, v0, p1}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;III)Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    move-result-object p0

    goto :goto_1

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v3, v4, v0, p1}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 239
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "HintDrawable not found exception"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;->getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    move-result-object v0

    .line 241
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->isResourceFromInternalPackage(Lcom/samsung/systemui/splugins/navigationbar/IconResource;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget v2, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightResId:I

    iget v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkResId:I

    invoke-interface {v1, p0, v2, v0, p1}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;III)Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    move-result-object p0

    goto :goto_1

    .line 243
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mKeyButtonDrawableProvider:Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mLightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;->mDarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, p0, v2, v0, p1}, Lcom/android/systemui/statusbar/phone/KeyButtonDrawableProvider;->getGestureHintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mOriginalTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mDefaultTheme:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    return-void
.end method

.method public updateConditions(Z)V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_THEME_DEFAULT:Lcom/android/systemui/statusbar/phone/store/EventType;

    new-instance v2, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;-><init>()V

    .line 297
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 296
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mStore:Lcom/android/systemui/statusbar/phone/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_THEME_DEFAULT:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/store/NavBarStore;->getResult(Lcom/android/systemui/statusbar/phone/store/EventType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mIsThemeDefault:Z

    .line 299
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mIsRTL:Z

    .line 300
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->determineThemeType()Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    .line 301
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateConditions isThemeDefault : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mIsThemeDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRTL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mIsRTL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ThemeType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/icon/NavBarIconResourceMapper;->mCurrentIconThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    .line 302
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavBarIconResourceMapper"

    .line 301
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
