.class public Lletv/widget/LetvProgressBar;
.super Landroid/widget/ProgressBar;
.source "LetvProgressBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lletv/widget/LetvProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v0, 0x10103db

    invoke-direct {p0, p1, p2, v0}, Lletv/widget/LetvProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lletv/widget/LetvProgressBar;->getProgress()I

    move-result v4

    .local v4, progress:I
    invoke-virtual {p0}, Lletv/widget/LetvProgressBar;->getSecondaryProgress()I

    move-result v6

    .local v6, sendcondProgress:I
    invoke-virtual {p0}, Lletv/widget/LetvProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lletv/widget/LetvProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    instance-of v7, v7, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lletv/widget/LetvProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .local v1, layerDrawable:Landroid/graphics/drawable/LayerDrawable;
    const v7, 0x102000d

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    instance-of v7, v7, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v7, :cond_0

    const v7, 0x102000d

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .local v0, gradientDrawable:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .local v5, rect:Landroid/graphics/Rect;
    if-nez v4, :cond_2

    const/4 v7, 0x0

    iput v7, v5, Landroid/graphics/Rect;->right:I

    :goto_0
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .end local v0           #gradientDrawable:Landroid/graphics/drawable/GradientDrawable;
    .end local v5           #rect:Landroid/graphics/Rect;
    :cond_0
    const v7, 0x102000f

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    instance-of v7, v7, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v7, :cond_1

    const v7, 0x102000f

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .restart local v0       #gradientDrawable:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .restart local v5       #rect:Landroid/graphics/Rect;
    if-nez v6, :cond_3

    const/4 v7, 0x0

    iput v7, v5, Landroid/graphics/Rect;->right:I

    :goto_1
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .end local v0           #gradientDrawable:Landroid/graphics/drawable/GradientDrawable;
    .end local v1           #layerDrawable:Landroid/graphics/drawable/LayerDrawable;
    .end local v5           #rect:Landroid/graphics/Rect;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .restart local v0       #gradientDrawable:Landroid/graphics/drawable/GradientDrawable;
    .restart local v1       #layerDrawable:Landroid/graphics/drawable/LayerDrawable;
    .restart local v5       #rect:Landroid/graphics/Rect;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lletv/widget/LetvProgressBar;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lletv/widget/LetvProgressBar;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lletv/widget/LetvProgressBar;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .local v3, n:F
    invoke-virtual {p0}, Lletv/widget/LetvProgressBar;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v3

    invoke-virtual {p0}, Lletv/widget/LetvProgressBar;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {p0}, Lletv/widget/LetvProgressBar;->getPaddingRight()I

    move-result v8

    int-to-float v8, v8

    sub-float v2, v7, v8

    .local v2, m:F
    add-int/lit8 v7, v4, -0x1

    int-to-float v7, v7

    mul-float/2addr v7, v2

    invoke-virtual {p0}, Lletv/widget/LetvProgressBar;->getMax()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, v5, Landroid/graphics/Rect;->right:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #gradientDrawable:Landroid/graphics/drawable/GradientDrawable;
    .end local v1           #layerDrawable:Landroid/graphics/drawable/LayerDrawable;
    .end local v2           #m:F
    .end local v3           #n:F
    .end local v4           #progress:I
    .end local v5           #rect:Landroid/graphics/Rect;
    .end local v6           #sendcondProgress:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .restart local v0       #gradientDrawable:Landroid/graphics/drawable/GradientDrawable;
    .restart local v1       #layerDrawable:Landroid/graphics/drawable/LayerDrawable;
    .restart local v4       #progress:I
    .restart local v5       #rect:Landroid/graphics/Rect;
    .restart local v6       #sendcondProgress:I
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lletv/widget/LetvProgressBar;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lletv/widget/LetvProgressBar;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lletv/widget/LetvProgressBar;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .restart local v3       #n:F
    invoke-virtual {p0}, Lletv/widget/LetvProgressBar;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v3

    invoke-virtual {p0}, Lletv/widget/LetvProgressBar;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {p0}, Lletv/widget/LetvProgressBar;->getPaddingRight()I

    move-result v8

    int-to-float v8, v8

    sub-float v2, v7, v8

    .restart local v2       #m:F
    add-int/lit8 v7, v6, -0x1

    int-to-float v7, v7

    mul-float/2addr v7, v2

    invoke-virtual {p0}, Lletv/widget/LetvProgressBar;->getMax()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, v5, Landroid/graphics/Rect;->right:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
