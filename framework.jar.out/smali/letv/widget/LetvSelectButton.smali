.class public Lletv/widget/LetvSelectButton;
.super Landroid/widget/LinearLayout;
.source "LetvSelectButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lletv/widget/LetvSelectButton$OnFocusChangeListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mColor:I

.field private mContentArray:[Ljava/lang/CharSequence;

.field private mContentId:I

.field private mContext:Landroid/content/Context;

.field private mImageArray:[I

.field private mListener:Lletv/widget/LetvSelectButton$OnFocusChangeListener;

.field private mSelView:Lletv/widget/LetvSelectView;

.field private mTitle:Ljava/lang/String;

.field private mtitle:Landroid/widget/TextView;

.field private sDisableColor:I

.field private sHighLightColor:I

.field private sNormalColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "LetvSelectButton"

    sput-object v0, Lletv/widget/LetvSelectButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lletv/widget/LetvSelectButton;->mContentId:I

    iput-object v2, p0, Lletv/widget/LetvSelectButton;->mSelView:Lletv/widget/LetvSelectView;

    iput-object v2, p0, Lletv/widget/LetvSelectButton;->mtitle:Landroid/widget/TextView;

    iput v3, p0, Lletv/widget/LetvSelectButton;->mColor:I

    iput-object p1, p0, Lletv/widget/LetvSelectButton;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->LetvSelectButton:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, mTypedArray:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lletv/widget/LetvSelectButton;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lletv/widget/LetvSelectButton;->mContentArray:[Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, Inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090088

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0, v4}, Lletv/widget/LetvSelectButton;->setFocusable(Z)V

    iget-object v2, p0, Lletv/widget/LetvSelectButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lletv/widget/LetvSelectButton;->sHighLightColor:I

    iget-object v2, p0, Lletv/widget/LetvSelectButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lletv/widget/LetvSelectButton;->sNormalColor:I

    iget-object v2, p0, Lletv/widget/LetvSelectButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lletv/widget/LetvSelectButton;->sDisableColor:I

    return-void
.end method


# virtual methods
.method public getSelectPosition()I
    .locals 1

    .prologue
    iget-object v0, p0, Lletv/widget/LetvSelectButton;->mSelView:Lletv/widget/LetvSelectView;

    invoke-virtual {v0}, Lletv/widget/LetvSelectView;->getSelectPosition()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    sget-object v0, Lletv/widget/LetvSelectButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lletv/widget/LetvSelectButton;->mSelView:Lletv/widget/LetvSelectView;

    invoke-virtual {v0, p1}, Lletv/widget/LetvSelectView;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x1020365

    invoke-virtual {p0, v0}, Lletv/widget/LetvSelectButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lletv/widget/LetvSelectButton;->mtitle:Landroid/widget/TextView;

    iget-object v0, p0, Lletv/widget/LetvSelectButton;->mtitle:Landroid/widget/TextView;

    iget-object v1, p0, Lletv/widget/LetvSelectButton;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lletv/widget/LetvSelectButton;->mtitle:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvSelectButton;->sNormalColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lletv/widget/LetvSelectButton;->sNormalColor:I

    iput v0, p0, Lletv/widget/LetvSelectButton;->mColor:I

    const v0, 0x1020366

    invoke-virtual {p0, v0}, Lletv/widget/LetvSelectButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lletv/widget/LetvSelectView;

    iput-object v0, p0, Lletv/widget/LetvSelectButton;->mSelView:Lletv/widget/LetvSelectView;

    iget-object v0, p0, Lletv/widget/LetvSelectButton;->mSelView:Lletv/widget/LetvSelectView;

    iget-object v1, p0, Lletv/widget/LetvSelectButton;->mContentArray:[Ljava/lang/CharSequence;

    iget v2, p0, Lletv/widget/LetvSelectButton;->mContentId:I

    invoke-virtual {v0, v1, v2}, Lletv/widget/LetvSelectView;->setContentArray([Ljava/lang/CharSequence;I)V

    invoke-virtual {p0, p0}, Lletv/widget/LetvSelectButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    sget-object v0, Lletv/widget/LetvSelectButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lletv/widget/LetvSelectButton;->mSelView:Lletv/widget/LetvSelectView;

    invoke-virtual {v0, p1}, Lletv/widget/LetvSelectView;->focusChanged(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lletv/widget/LetvSelectButton;->mtitle:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvSelectButton;->sHighLightColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lletv/widget/LetvSelectButton;->sHighLightColor:I

    iput v0, p0, Lletv/widget/LetvSelectButton;->mColor:I

    :goto_0
    iget-object v0, p0, Lletv/widget/LetvSelectButton;->mListener:Lletv/widget/LetvSelectButton$OnFocusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lletv/widget/LetvSelectButton;->mListener:Lletv/widget/LetvSelectButton$OnFocusChangeListener;

    invoke-interface {v0, p1}, Lletv/widget/LetvSelectButton$OnFocusChangeListener;->onFocusChange(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lletv/widget/LetvSelectButton;->mtitle:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvSelectButton;->sNormalColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lletv/widget/LetvSelectButton;->sNormalColor:I

    iput v0, p0, Lletv/widget/LetvSelectButton;->mColor:I

    goto :goto_0
.end method

.method public setContentArray([Ljava/lang/CharSequence;I)V
    .locals 3
    .parameter "contentArray"
    .parameter "selectId"

    .prologue
    iput p2, p0, Lletv/widget/LetvSelectButton;->mContentId:I

    iput-object p1, p0, Lletv/widget/LetvSelectButton;->mContentArray:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lletv/widget/LetvSelectButton;->mSelView:Lletv/widget/LetvSelectView;

    iget-object v1, p0, Lletv/widget/LetvSelectButton;->mContentArray:[Ljava/lang/CharSequence;

    iget v2, p0, Lletv/widget/LetvSelectButton;->mContentId:I

    invoke-virtual {v0, v1, v2}, Lletv/widget/LetvSelectView;->setContentArray([Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lletv/widget/LetvSelectButton;->setFocusable(Z)V

    iget-object v0, p0, Lletv/widget/LetvSelectButton;->mtitle:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvSelectButton;->mColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lletv/widget/LetvSelectButton;->mSelView:Lletv/widget/LetvSelectView;

    invoke-virtual {v0, p1}, Lletv/widget/LetvSelectView;->getEnable(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lletv/widget/LetvSelectButton;->setFocusable(Z)V

    iget-object v0, p0, Lletv/widget/LetvSelectButton;->mtitle:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvSelectButton;->sDisableColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lletv/widget/LetvSelectButton;->mSelView:Lletv/widget/LetvSelectView;

    invoke-virtual {v0, p1}, Lletv/widget/LetvSelectView;->getEnable(Z)V

    goto :goto_0
.end method

.method public setOnFocusChangeListener(Lletv/widget/LetvSelectButton$OnFocusChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lletv/widget/LetvSelectButton;->mListener:Lletv/widget/LetvSelectButton$OnFocusChangeListener;

    return-void
.end method

.method public setOnViewSelectListener(Lletv/widget/LetvSelectView$OnSelectListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lletv/widget/LetvSelectButton;->mSelView:Lletv/widget/LetvSelectView;

    invoke-virtual {v0, p1}, Lletv/widget/LetvSelectView;->setOnSelectListener(Lletv/widget/LetvSelectView$OnSelectListener;)V

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    iget-object v0, p0, Lletv/widget/LetvSelectButton;->mSelView:Lletv/widget/LetvSelectView;

    invoke-virtual {v0, p1}, Lletv/widget/LetvSelectView;->setSelectedPosition(I)V

    return-void
.end method

.method public setSelectedPositionNoAnimation(I)V
    .locals 1
    .parameter "position"

    .prologue
    iget-object v0, p0, Lletv/widget/LetvSelectButton;->mSelView:Lletv/widget/LetvSelectView;

    invoke-virtual {v0, p1}, Lletv/widget/LetvSelectView;->setSelectedPositionNoAnimation(I)V

    return-void
.end method

.method public setSelectedPositionNotValidate(I)V
    .locals 1
    .parameter "position"

    .prologue
    iget-object v0, p0, Lletv/widget/LetvSelectButton;->mSelView:Lletv/widget/LetvSelectView;

    invoke-virtual {v0, p1}, Lletv/widget/LetvSelectView;->setSelectedPositionNotValidate(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    iput-object p1, p0, Lletv/widget/LetvSelectButton;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lletv/widget/LetvSelectButton;->mtitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lletv/widget/LetvSelectButton;->mtitle:Landroid/widget/TextView;

    iget-object v1, p0, Lletv/widget/LetvSelectButton;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showLoading(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    const v1, 0x1020367

    invoke-virtual {p0, v1}, Lletv/widget/LetvSelectButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .local v0, pb:Landroid/widget/ProgressBar;
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method
