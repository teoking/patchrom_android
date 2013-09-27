.class public Lletv/widget/LetvSelectView;
.super Landroid/widget/LinearLayout;
.source "LetvSelectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lletv/widget/LetvSelectView$OnSelectListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LetvSelectView"


# instance fields
.field private mArrayId:I

.field private mColor:I

.field private mContentArray:[Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mGetEnable:Z

.field private mImageArray:[I

.field private mItem:Landroid/widget/TextView;

.field private mListener:Lletv/widget/LetvSelectView$OnSelectListener;

.field private mSelectPosition:I

.field private mSelectViewAuto:Z

.field private mViewFlipper:Landroid/widget/ViewFlipper;

.field private sDisableColor:I

.field private sHighLightColor:I

.field private sNormalColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v4, p0, Lletv/widget/LetvSelectView;->mSelectPosition:I

    iput-boolean v3, p0, Lletv/widget/LetvSelectView;->mSelectViewAuto:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lletv/widget/LetvSelectView;->mItem:Landroid/widget/TextView;

    iput-boolean v3, p0, Lletv/widget/LetvSelectView;->mGetEnable:Z

    iput v4, p0, Lletv/widget/LetvSelectView;->mColor:I

    iput-object p1, p0, Lletv/widget/LetvSelectView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->LetvSelectView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, mTypedArray:Landroid/content/res/TypedArray;
    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lletv/widget/LetvSelectView;->mArrayId:I

    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lletv/widget/LetvSelectView;->mSelectPosition:I

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lletv/widget/LetvSelectView;->mSelectViewAuto:Z

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lletv/widget/LetvSelectView;->mContentArray:[Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, Inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090089

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v2, p0, Lletv/widget/LetvSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lletv/widget/LetvSelectView;->sHighLightColor:I

    iget-object v2, p0, Lletv/widget/LetvSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lletv/widget/LetvSelectView;->sNormalColor:I

    iget-object v2, p0, Lletv/widget/LetvSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lletv/widget/LetvSelectView;->sDisableColor:I

    return-void
.end method


# virtual methods
.method focusChanged(Z)V
    .locals 7
    .parameter "gainFocus"

    .prologue
    const v6, 0x102036a

    const-string v3, "LetvSelectView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFocusChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, tv:Landroid/widget/TextView;
    iget v3, p0, Lletv/widget/LetvSelectView;->sHighLightColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget v3, p0, Lletv/widget/LetvSelectView;->sHighLightColor:I

    iput v3, p0, Lletv/widget/LetvSelectView;->mColor:I

    .end local v1           #tv:Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v2           #view:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v3, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .restart local v2       #view:Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .restart local v1       #tv:Landroid/widget/TextView;
    iget v3, p0, Lletv/widget/LetvSelectView;->sNormalColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget v3, p0, Lletv/widget/LetvSelectView;->sNormalColor:I

    iput v3, p0, Lletv/widget/LetvSelectView;->mColor:I

    .end local v1           #tv:Landroid/widget/TextView;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2           #view:Landroid/view/View;
    :cond_3
    return-void
.end method

.method public getEnable(Z)V
    .locals 5
    .parameter "flag"

    .prologue
    const v4, 0x102036a

    iput-boolean p1, p0, Lletv/widget/LetvSelectView;->mGetEnable:Z

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, tv:Landroid/widget/TextView;
    iget v3, p0, Lletv/widget/LetvSelectView;->mColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .end local v1           #tv:Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v2           #view:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v3, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .restart local v2       #view:Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .restart local v1       #tv:Landroid/widget/TextView;
    iget v3, p0, Lletv/widget/LetvSelectView;->sDisableColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .end local v1           #tv:Landroid/widget/TextView;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2           #view:Landroid/view/View;
    :cond_3
    return-void
.end method

.method public getOnSelectListener()Lletv/widget/LetvSelectView$OnSelectListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lletv/widget/LetvSelectView;->mListener:Lletv/widget/LetvSelectView$OnSelectListener;

    return-object v0
.end method

.method public getSelectPosition()I
    .locals 1

    .prologue
    iget v0, p0, Lletv/widget/LetvSelectView;->mSelectPosition:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    iget-boolean v1, p0, Lletv/widget/LetvSelectView;->mGetEnable:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    .local v0, count:I
    iget-object v1, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lletv/widget/LetvSelectView;->mContext:Landroid/content/Context;

    const v3, 0x10a0002

    invoke-virtual {v1, v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    iget-object v1, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lletv/widget/LetvSelectView;->mContext:Landroid/content/Context;

    const v3, 0x10a0003

    invoke-virtual {v1, v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    iget v1, p0, Lletv/widget/LetvSelectView;->mSelectPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lletv/widget/LetvSelectView;->mSelectPosition:I

    iget v1, p0, Lletv/widget/LetvSelectView;->mSelectPosition:I

    if-lt v1, v0, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lletv/widget/LetvSelectView;->mSelectPosition:I

    :cond_1
    iget v1, p0, Lletv/widget/LetvSelectView;->mSelectPosition:I

    invoke-virtual {p0, v1}, Lletv/widget/LetvSelectView;->setSelectedPosition(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x1020368

    invoke-virtual {p0, v0}, Lletv/widget/LetvSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget v0, p0, Lletv/widget/LetvSelectView;->mArrayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lletv/widget/LetvSelectView;->mSelectViewAuto:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lletv/widget/LetvSelectView;->mSelectPosition:I

    invoke-virtual {p0, v0}, Lletv/widget/LetvSelectView;->setChildsId(I)V

    :cond_0
    iget-object v0, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p0}, Landroid/widget/ViewFlipper;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setChildsId(I)V
    .locals 5
    .parameter "selectId"

    .prologue
    iget-object v2, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->removeAllViews()V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lletv/widget/LetvSelectView;->mContentArray:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lletv/widget/LetvSelectView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109008c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, v:Landroid/view/View;
    const v2, 0x102036a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lletv/widget/LetvSelectView;->mItem:Landroid/widget/TextView;

    iget-object v2, p0, Lletv/widget/LetvSelectView;->mItem:Landroid/widget/TextView;

    iget-object v3, p0, Lletv/widget/LetvSelectView;->mContentArray:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lletv/widget/LetvSelectView;->mItem:Landroid/widget/TextView;

    iget v3, p0, Lletv/widget/LetvSelectView;->sNormalColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget v2, p0, Lletv/widget/LetvSelectView;->sNormalColor:I

    iput v2, p0, Lletv/widget/LetvSelectView;->mColor:I

    iget-object v2, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lletv/widget/LetvSelectView;->setSelectedPosition(I)V

    return-void
.end method

.method public setContentArray([Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "contentArray"
    .parameter "selectId"

    .prologue
    iput-object p1, p0, Lletv/widget/LetvSelectView;->mContentArray:[Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Lletv/widget/LetvSelectView;->setChildsId(I)V

    return-void
.end method

.method public setImageArray([II)V
    .locals 0
    .parameter "contentArray"
    .parameter "selectId"

    .prologue
    iput-object p1, p0, Lletv/widget/LetvSelectView;->mImageArray:[I

    invoke-virtual {p0, p2}, Lletv/widget/LetvSelectView;->setChildsId(I)V

    return-void
.end method

.method public setOnSelectListener(Lletv/widget/LetvSelectView$OnSelectListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lletv/widget/LetvSelectView;->mListener:Lletv/widget/LetvSelectView$OnSelectListener;

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 3
    .parameter "position"

    .prologue
    iget-object v1, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    .local v0, count:I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iput p1, p0, Lletv/widget/LetvSelectView;->mSelectPosition:I

    iget-object v1, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    iget-object v1, p0, Lletv/widget/LetvSelectView;->mListener:Lletv/widget/LetvSelectView$OnSelectListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lletv/widget/LetvSelectView;->mListener:Lletv/widget/LetvSelectView$OnSelectListener;

    iget v2, p0, Lletv/widget/LetvSelectView;->mSelectPosition:I

    invoke-interface {v1, p0, v2}, Lletv/widget/LetvSelectView$OnSelectListener;->viewChange(Lletv/widget/LetvSelectView;I)V

    :cond_0
    return-void
.end method

.method public setSelectedPositionNoAnimation(I)V
    .locals 3
    .parameter "position"

    .prologue
    iget-object v0, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lletv/widget/LetvSelectView;->mContext:Landroid/content/Context;

    const v2, 0x10a0012

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lletv/widget/LetvSelectView;->mContext:Landroid/content/Context;

    const v2, 0x10a0013

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    invoke-virtual {p0, p1}, Lletv/widget/LetvSelectView;->setSelectedPosition(I)V

    return-void
.end method

.method public setSelectedPositionNotValidate(I)V
    .locals 4
    .parameter "position"

    .prologue
    iget-object v1, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    .local v0, count:I
    iget-object v1, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lletv/widget/LetvSelectView;->mContext:Landroid/content/Context;

    const v3, 0x10a0012

    invoke-virtual {v1, v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    iget-object v1, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lletv/widget/LetvSelectView;->mContext:Landroid/content/Context;

    const v3, 0x10a0013

    invoke-virtual {v1, v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iput p1, p0, Lletv/widget/LetvSelectView;->mSelectPosition:I

    iget-object v1, p0, Lletv/widget/LetvSelectView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    :cond_0
    return-void
.end method
