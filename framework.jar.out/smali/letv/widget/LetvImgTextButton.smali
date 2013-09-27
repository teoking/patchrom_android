.class public Lletv/widget/LetvImgTextButton;
.super Landroid/widget/LinearLayout;
.source "LetvImgTextButton.java"


# static fields
.field private static sHighLightColor:I

.field private static sNormalColor:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFocusImage:Landroid/graphics/drawable/Drawable;

.field private mFragment:Ljava/lang/String;

.field private mNormalImage:Landroid/graphics/drawable/Drawable;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lletv/widget/LetvImgTextButton;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->LetvImgTextButton:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, mTypedArray:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lletv/widget/LetvImgTextButton;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lletv/widget/LetvImgTextButton;->mNormalImage:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lletv/widget/LetvImgTextButton;->mFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, Inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090084

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v2, p0, Lletv/widget/LetvImgTextButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lletv/widget/LetvImgTextButton;->sHighLightColor:I

    iget-object v2, p0, Lletv/widget/LetvImgTextButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lletv/widget/LetvImgTextButton;->sNormalColor:I

    invoke-virtual {p0, v4}, Lletv/widget/LetvImgTextButton;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public clearImg()V
    .locals 2

    .prologue
    const v1, 0x1020267

    invoke-virtual {p0, v1}, Lletv/widget/LetvImgTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, iv:Landroid/widget/ImageView;
    iget-object v1, p0, Lletv/widget/LetvImgTextButton;->mNormalImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v2, 0x1020016

    invoke-virtual {p0, v2}, Lletv/widget/LetvImgTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, text:Landroid/widget/TextView;
    iget-object v2, p0, Lletv/widget/LetvImgTextButton;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v2, Lletv/widget/LetvImgTextButton;->sNormalColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x1020267

    invoke-virtual {p0, v2}, Lletv/widget/LetvImgTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, iv:Landroid/widget/ImageView;
    iget-object v2, p0, Lletv/widget/LetvImgTextButton;->mNormalImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lletv/widget/LetvImgTextButton;->setImgTextDisplay()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const v1, 0x1020016

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lletv/widget/LetvImgTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, tv:Landroid/widget/TextView;
    sget v1, Lletv/widget/LetvImgTextButton;->sHighLightColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    .end local v0           #tv:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0, v1}, Lletv/widget/LetvImgTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .restart local v0       #tv:Landroid/widget/TextView;
    sget v1, Lletv/widget/LetvImgTextButton;->sNormalColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setImgDisplay(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "nImg"
    .parameter "fImg"

    .prologue
    iput-object p1, p0, Lletv/widget/LetvImgTextButton;->mNormalImage:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lletv/widget/LetvImgTextButton;->mFocusImage:Landroid/graphics/drawable/Drawable;

    const v1, 0x1020267

    invoke-virtual {p0, v1}, Lletv/widget/LetvImgTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, iv:Landroid/widget/ImageView;
    iget-object v1, p0, Lletv/widget/LetvImgTextButton;->mFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lletv/widget/LetvImgTextButton;->setImgTextDisplay()V

    return-void
.end method

.method setImgTextDisplay()V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x0

    const v3, 0x1020016

    invoke-virtual {p0, v3}, Lletv/widget/LetvImgTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, text:Landroid/widget/TextView;
    const v3, 0x1020267

    invoke-virtual {p0, v3}, Lletv/widget/LetvImgTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .local v1, layout:Landroid/widget/LinearLayout;
    iget-object v3, p0, Lletv/widget/LetvImgTextButton;->mNormalImage:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    iget-object v3, p0, Lletv/widget/LetvImgTextButton;->mFocusImage:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v3, 0x19a

    invoke-virtual {v1, v3, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v5, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    iput-object p1, p0, Lletv/widget/LetvImgTextButton;->mTitle:Ljava/lang/String;

    const v1, 0x1020016

    invoke-virtual {p0, v1}, Lletv/widget/LetvImgTextButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, v:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lletv/widget/LetvImgTextButton;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
