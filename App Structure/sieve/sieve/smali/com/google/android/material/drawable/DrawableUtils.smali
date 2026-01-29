.class public final Lcom/google/android/material/drawable/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# static fields
.field public static final INTRINSIC_SIZE:I = -0x1

.field private static final UNSPECIFIED_HEIGHT:I = -0x1

.field private static final UNSPECIFIED_WIDTH:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compositeTwoLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "bottomLayerDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "topLayerDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 223
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, v0}, Lcom/google/android/material/drawable/DrawableUtils;->compositeTwoLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static compositeTwoLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 16
    .param p0, "bottomLayerDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "topLayerDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "topLayerDesiredWidth"    # I
    .param p3, "topLayerDesiredHeight"    # I

    .line 248
    move-object/from16 v0, p1

    if-nez p0, :cond_0

    .line 249
    return-object v0

    .line 251
    :cond_0
    if-nez v0, :cond_1

    .line 252
    return-object p0

    .line 255
    :cond_1
    const/4 v1, -0x1

    move/from16 v2, p2

    if-ne v2, v1, :cond_2

    .line 256
    invoke-static/range {p0 .. p1}, Lcom/google/android/material/drawable/DrawableUtils;->getTopLayerIntrinsicWidth(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 258
    .end local p2    # "topLayerDesiredWidth":I
    .local v2, "topLayerDesiredWidth":I
    :cond_2
    move/from16 v3, p3

    if-ne v3, v1, :cond_3

    .line 259
    invoke-static/range {p0 .. p1}, Lcom/google/android/material/drawable/DrawableUtils;->getTopLayerIntrinsicHeight(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .end local p3    # "topLayerDesiredHeight":I
    .local v1, "topLayerDesiredHeight":I
    goto :goto_0

    .line 258
    .end local v1    # "topLayerDesiredHeight":I
    .restart local p3    # "topLayerDesiredHeight":I
    :cond_3
    move v1, v3

    .line 264
    .end local p3    # "topLayerDesiredHeight":I
    .restart local v1    # "topLayerDesiredHeight":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-gt v2, v3, :cond_4

    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-gt v1, v3, :cond_4

    .line 268
    move v3, v2

    .line 269
    .local v3, "topLayerNewWidth":I
    move v4, v1

    .local v4, "topLayerNewHeight":I
    goto :goto_1

    .line 271
    .end local v3    # "topLayerNewWidth":I
    .end local v4    # "topLayerNewHeight":I
    :cond_4
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 272
    .local v3, "topLayerRatio":F
    nop

    .line 273
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 275
    .local v4, "bottomLayerRatio":F
    cmpl-float v5, v3, v4

    if-ltz v5, :cond_5

    .line 278
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 279
    .local v5, "topLayerNewWidth":I
    int-to-float v6, v5

    div-float/2addr v6, v3

    float-to-int v6, v6

    move v3, v5

    move v4, v6

    .local v6, "topLayerNewHeight":I
    goto :goto_1

    .line 283
    .end local v5    # "topLayerNewWidth":I
    .end local v6    # "topLayerNewHeight":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 284
    .local v5, "topLayerNewHeight":I
    int-to-float v6, v5

    mul-float v6, v6, v3

    float-to-int v6, v6

    move v4, v5

    move v3, v6

    .line 289
    .end local v5    # "topLayerNewHeight":I
    .local v3, "topLayerNewWidth":I
    .local v4, "topLayerNewHeight":I
    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-lt v5, v6, :cond_6

    .line 290
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    new-array v6, v9, [Landroid/graphics/drawable/Drawable;

    aput-object p0, v6, v8

    aput-object v0, v6, v7

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 292
    .local v5, "drawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v5, v7, v3, v4}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    .line 293
    const/16 v6, 0x11

    invoke-virtual {v5, v7, v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    goto :goto_2

    .line 295
    .end local v5    # "drawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_6
    new-instance v5, Lcom/google/android/material/drawable/ScaledDrawableWrapper;

    invoke-direct {v5, v0, v3, v4}, Lcom/google/android/material/drawable/ScaledDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 297
    invoke-virtual {v5}, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 299
    .local v5, "scaledTopLayerDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v10, Landroid/graphics/drawable/LayerDrawable;

    new-array v6, v9, [Landroid/graphics/drawable/Drawable;

    aput-object p0, v6, v8

    aput-object v5, v6, v7

    invoke-direct {v10, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 301
    .local v10, "drawable":Landroid/graphics/drawable/LayerDrawable;
    nop

    .line 302
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v6, v3

    div-int/2addr v6, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 303
    .local v6, "horizontalInset":I
    nop

    .line 304
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v7, v4

    div-int/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 305
    .local v7, "verticalInset":I
    const/4 v11, 0x1

    move v12, v6

    move v13, v7

    move v14, v6

    move v15, v7

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    move-object v5, v10

    .line 308
    .end local v6    # "horizontalInset":I
    .end local v7    # "verticalInset":I
    .end local v10    # "drawable":Landroid/graphics/drawable/LayerDrawable;
    .local v5, "drawable":Landroid/graphics/drawable/LayerDrawable;
    :goto_2
    return-object v5
.end method

.method public static createTintableDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 170
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p3, "forceMutate"    # Z

    .line 196
    if-nez p0, :cond_0

    .line 197
    const/4 v0, 0x0

    return-object v0

    .line 199
    :cond_0
    if-eqz p1, :cond_1

    .line 200
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 201
    if-eqz p2, :cond_2

    .line 202
    invoke-static {p0, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 204
    :cond_1
    if-eqz p3, :cond_2

    .line 205
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 207
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static getCheckedState([I)[I
    .locals 3
    .param p0, "state"    # [I

    .line 328
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    const v2, 0x10100a0

    if-ge v0, v1, :cond_2

    .line 329
    aget v1, p0, v0

    if-ne v1, v2, :cond_0

    .line 330
    return-object p0

    .line 331
    :cond_0
    aget v1, p0, v0

    if-nez v1, :cond_1

    .line 332
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 333
    .local v1, "newState":[I
    aput v2, v1, v0

    .line 334
    return-object v1

    .line 328
    .end local v1    # "newState":[I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    .end local v0    # "i":I
    :cond_2
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 338
    .local v0, "newState":[I
    array-length v1, p0

    aput v2, v0, v1

    .line 339
    return-object v0
.end method

.method private static getTopLayerIntrinsicHeight(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p0, "bottomLayerDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "topLayerDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 320
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 321
    .local v0, "topLayerIntrinsicHeight":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 322
    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 321
    :goto_0
    return v1
.end method

.method private static getTopLayerIntrinsicWidth(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p0, "bottomLayerDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "topLayerDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 313
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 314
    .local v0, "topLayerIntrinsicWidth":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 315
    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 314
    :goto_0
    return v1
.end method

.method public static getUncheckedState([I)[I
    .locals 6
    .param p0, "state"    # [I

    .line 345
    array-length v0, p0

    new-array v0, v0, [I

    .line 346
    .local v0, "newState":[I
    const/4 v1, 0x0

    .line 347
    .local v1, "i":I
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p0, v3

    .line 348
    .local v4, "subState":I
    const v5, 0x10100a0

    if-eq v4, v5, :cond_0

    .line 349
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    aput v4, v0, v1

    move v1, v5

    .line 347
    .end local v4    # "subState":I
    .end local v5    # "i":I
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 352
    :cond_1
    return-object v0
.end method

.method public static parseDrawableXml(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/util/AttributeSet;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "startTag"    # Ljava/lang/CharSequence;

    .line 122
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 126
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 127
    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 128
    :cond_1
    if-ne v1, v2, :cond_3

    .line 132
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 138
    .local v2, "attrs":Landroid/util/AttributeSet;
    return-object v2

    .line 133
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    :cond_2
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Must have a <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> start tag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "id":I
    .end local p2    # "startTag":Ljava/lang/CharSequence;
    throw v2

    .line 129
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "id":I
    .restart local p2    # "startTag":Ljava/lang/CharSequence;
    :cond_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "id":I
    .end local p2    # "startTag":Ljava/lang/CharSequence;
    throw v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "type":I
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "id":I
    .restart local p2    # "startTag":Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t load badge resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 141
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, "exception":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 143
    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public static setOutlineToPath(Landroid/graphics/Outline;Landroid/graphics/Path;)V
    .locals 2
    .param p0, "outline"    # Landroid/graphics/Outline;
    .param p1, "path"    # Landroid/graphics/Path;

    .line 357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 358
    invoke-virtual {p0, p1}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    goto :goto_1

    .line 359
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 363
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    goto :goto_1

    .line 364
    :catch_0
    move-exception v0

    goto :goto_0

    .line 368
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {p0, p1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 371
    :cond_2
    :goto_1
    return-void
.end method

.method public static setRippleDrawableRadius(Landroid/graphics/drawable/RippleDrawable;I)V
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/RippleDrawable;
    .param p1, "radius"    # I

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 150
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    goto :goto_0

    .line 154
    :cond_0
    :try_start_0
    const-class v0, Landroid/graphics/drawable/RippleDrawable;

    const-string/jumbo v1, "setMaxRadius"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 155
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 156
    .local v0, "setMaxRadiusMethod":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    nop

    .line 161
    .end local v0    # "setMaxRadiusMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Couldn\'t set RippleDrawable radius"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
    .locals 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "color"    # I

    .line 86
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 87
    .local v0, "hasTint":Z
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 90
    if-eqz v0, :cond_1

    .line 91
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 96
    :cond_2
    if-eqz v0, :cond_3

    .line 97
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 99
    :cond_3
    invoke-static {p0, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 102
    :goto_1
    return-void
.end method

.method public static updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 110
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 115
    .local v0, "color":I
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1

    .line 111
    .end local v0    # "color":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
