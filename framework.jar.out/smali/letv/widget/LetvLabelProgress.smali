.class public Lletv/widget/LetvLabelProgress;
.super Landroid/widget/LinearLayout;
.source "LetvLabelProgress.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lletv/widget/LetvLabelProgress$OnChangeListener;,
        Lletv/widget/LetvLabelProgress$OnFocusChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LetvLabelProgress"


# instance fields
.field private MAXVALUE:I

.field private MINVALUE:I

.field private mContext:Landroid/content/Context;

.field private mFocusListener:Lletv/widget/LetvLabelProgress$OnFocusChangeListener;

.field private mIsFocused:Z

.field private mListener:Lletv/widget/LetvLabelProgress$OnChangeListener;

.field private mMaxValue:I

.field private mMinValue:I

.field private mNameText:Landroid/widget/TextView;

.field private mProgress:Lletv/widget/LetvSeekBar;

.field private mStep:I

.field private mTitle:Ljava/lang/String;

.field private mValue:I

.field private mValueText:Landroid/widget/TextView;

.field private sDisableColor:I

.field private sHighLightColor:I

.field private sNormalColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0x64

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lletv/widget/LetvLabelProgress;->mMinValue:I

    iput v5, p0, Lletv/widget/LetvLabelProgress;->mMaxValue:I

    iput v3, p0, Lletv/widget/LetvLabelProgress;->mStep:I

    iput v3, p0, Lletv/widget/LetvLabelProgress;->MINVALUE:I

    iput v5, p0, Lletv/widget/LetvLabelProgress;->MAXVALUE:I

    iput v3, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    iput-boolean v3, p0, Lletv/widget/LetvLabelProgress;->mIsFocused:Z

    iput-object v2, p0, Lletv/widget/LetvLabelProgress;->mListener:Lletv/widget/LetvLabelProgress$OnChangeListener;

    iput-object v2, p0, Lletv/widget/LetvLabelProgress;->mTitle:Ljava/lang/String;

    iput v3, p0, Lletv/widget/LetvLabelProgress;->sHighLightColor:I

    iput v3, p0, Lletv/widget/LetvLabelProgress;->sNormalColor:I

    iput v3, p0, Lletv/widget/LetvLabelProgress;->sDisableColor:I

    iput-object p1, p0, Lletv/widget/LetvLabelProgress;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->LetvLabelProgress:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, mTypedArray:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lletv/widget/LetvLabelProgress;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lletv/widget/LetvLabelProgress;->mMinValue:I

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lletv/widget/LetvLabelProgress;->mMaxValue:I

    const/4 v2, 0x3

    const/16 v3, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, Inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090087

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0, v4}, Lletv/widget/LetvLabelProgress;->setFocusable(Z)V

    iget-object v2, p0, Lletv/widget/LetvLabelProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lletv/widget/LetvLabelProgress;->sHighLightColor:I

    iget-object v2, p0, Lletv/widget/LetvLabelProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lletv/widget/LetvLabelProgress;->sNormalColor:I

    iget-object v2, p0, Lletv/widget/LetvLabelProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lletv/widget/LetvLabelProgress;->sDisableColor:I

    return-void
.end method

.method private transformValue()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, value:I
    iget v1, p0, Lletv/widget/LetvLabelProgress;->mStep:I

    if-eqz v1, :cond_0

    iget v1, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    iget v2, p0, Lletv/widget/LetvLabelProgress;->mStep:I

    mul-int v0, v1, v2

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lletv/widget/LetvLabelProgress;->MINVALUE:I

    iget v2, p0, Lletv/widget/LetvLabelProgress;->mMinValue:I

    sub-int/2addr v1, v2

    iget v2, p0, Lletv/widget/LetvLabelProgress;->MAXVALUE:I

    iget v3, p0, Lletv/widget/LetvLabelProgress;->mMaxValue:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    add-int v0, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public clearProgressFocus()V
    .locals 2

    .prologue
    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mProgress:Lletv/widget/LetvSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lletv/widget/LetvSeekBar;->setProgress(I)V

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mProgress:Lletv/widget/LetvSeekBar;

    invoke-direct {p0}, Lletv/widget/LetvLabelProgress;->transformValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lletv/widget/LetvSeekBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public getValue()I
    .locals 1

    .prologue
    iget v0, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x1020362

    invoke-virtual {p0, v0}, Lletv/widget/LetvLabelProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lletv/widget/LetvLabelProgress;->mNameText:Landroid/widget/TextView;

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mNameText:Landroid/widget/TextView;

    iget-object v1, p0, Lletv/widget/LetvLabelProgress;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mNameText:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvLabelProgress;->sNormalColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x1020363

    invoke-virtual {p0, v0}, Lletv/widget/LetvLabelProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lletv/widget/LetvSeekBar;

    iput-object v0, p0, Lletv/widget/LetvLabelProgress;->mProgress:Lletv/widget/LetvSeekBar;

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mProgress:Lletv/widget/LetvSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lletv/widget/LetvSeekBar;->setProgress(I)V

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mProgress:Lletv/widget/LetvSeekBar;

    invoke-direct {p0}, Lletv/widget/LetvLabelProgress;->transformValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lletv/widget/LetvSeekBar;->setSecondaryProgress(I)V

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mProgress:Lletv/widget/LetvSeekBar;

    invoke-virtual {v0, p0}, Lletv/widget/LetvSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x1020364

    invoke-virtual {p0, v0}, Lletv/widget/LetvLabelProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lletv/widget/LetvLabelProgress;->mValueText:Landroid/widget/TextView;

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mValueText:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mValueText:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvLabelProgress;->sNormalColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const-string v0, "LetvLabelProgress"

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

    if-eqz p1, :cond_1

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mNameText:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvLabelProgress;->sHighLightColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mValueText:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvLabelProgress;->sHighLightColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mProgress:Lletv/widget/LetvSeekBar;

    invoke-direct {p0}, Lletv/widget/LetvLabelProgress;->transformValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lletv/widget/LetvSeekBar;->setProgress(I)V

    :goto_0
    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mFocusListener:Lletv/widget/LetvLabelProgress$OnFocusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mFocusListener:Lletv/widget/LetvLabelProgress$OnFocusChangeListener;

    invoke-interface {v0, p0, p1}, Lletv/widget/LetvLabelProgress$OnFocusChangeListener;->onFocusChange(Lletv/widget/LetvLabelProgress;Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mNameText:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvLabelProgress;->sNormalColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mValueText:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvLabelProgress;->sNormalColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mProgress:Lletv/widget/LetvSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lletv/widget/LetvSeekBar;->setProgress(I)V

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mProgress:Lletv/widget/LetvSeekBar;

    invoke-direct {p0}, Lletv/widget/LetvLabelProgress;->transformValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lletv/widget/LetvSeekBar;->setSecondaryProgress(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget v0, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    iget v1, p0, Lletv/widget/LetvLabelProgress;->mMinValue:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mProgress:Lletv/widget/LetvSeekBar;

    invoke-direct {p0}, Lletv/widget/LetvLabelProgress;->transformValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lletv/widget/LetvSeekBar;->setProgress(I)V

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mProgress:Lletv/widget/LetvSeekBar;

    invoke-virtual {v0, v2}, Lletv/widget/LetvSeekBar;->setSecondaryProgress(I)V

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mValueText:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mListener:Lletv/widget/LetvLabelProgress$OnChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mListener:Lletv/widget/LetvLabelProgress$OnChangeListener;

    iget v1, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    invoke-interface {v0, v1}, Lletv/widget/LetvLabelProgress$OnChangeListener;->onChange(I)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    iget v1, p0, Lletv/widget/LetvLabelProgress;->mMaxValue:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mProgress:Lletv/widget/LetvSeekBar;

    invoke-direct {p0}, Lletv/widget/LetvLabelProgress;->transformValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lletv/widget/LetvSeekBar;->setProgress(I)V

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mProgress:Lletv/widget/LetvSeekBar;

    invoke-virtual {v0, v2}, Lletv/widget/LetvSeekBar;->setSecondaryProgress(I)V

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mValueText:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mListener:Lletv/widget/LetvLabelProgress$OnChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mListener:Lletv/widget/LetvLabelProgress$OnChangeListener;

    iget v1, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    invoke-interface {v0, v1}, Lletv/widget/LetvLabelProgress$OnChangeListener;->onChange(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lletv/widget/LetvLabelProgress;->mProgress:Lletv/widget/LetvSeekBar;

    invoke-virtual {v1}, Lletv/widget/LetvSeekBar;->getProgress()I

    move-result v0

    .local v0, value:I
    iget v1, p0, Lletv/widget/LetvLabelProgress;->mStep:I

    if-eqz v1, :cond_1

    iget v1, p0, Lletv/widget/LetvLabelProgress;->mStep:I

    div-int v1, v0, v1

    iput v1, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    :goto_0
    iget-object v1, p0, Lletv/widget/LetvLabelProgress;->mProgress:Lletv/widget/LetvSeekBar;

    invoke-virtual {v1, v4}, Lletv/widget/LetvSeekBar;->setSecondaryProgress(I)V

    iget-object v1, p0, Lletv/widget/LetvLabelProgress;->mValueText:Landroid/widget/TextView;

    iget v2, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lletv/widget/LetvLabelProgress;->mListener:Lletv/widget/LetvLabelProgress$OnChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lletv/widget/LetvLabelProgress;->mListener:Lletv/widget/LetvLabelProgress$OnChangeListener;

    iget v2, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    invoke-interface {v1, v2}, Lletv/widget/LetvLabelProgress$OnChangeListener;->onChange(I)V

    :cond_0
    return v4

    :cond_1
    iget v1, p0, Lletv/widget/LetvLabelProgress;->MINVALUE:I

    iget v2, p0, Lletv/widget/LetvLabelProgress;->mMinValue:I

    sub-int/2addr v1, v2

    iget v2, p0, Lletv/widget/LetvLabelProgress;->MAXVALUE:I

    iget v3, p0, Lletv/widget/LetvLabelProgress;->mMaxValue:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    iput v1, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    goto :goto_0
.end method

.method public setArea(II)V
    .locals 0
    .parameter "min"
    .parameter "max"

    .prologue
    iput p1, p0, Lletv/widget/LetvLabelProgress;->mMinValue:I

    iput p2, p0, Lletv/widget/LetvLabelProgress;->mMaxValue:I

    return-void
.end method

.method public setDisable(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mNameText:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvLabelProgress;->sDisableColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mValueText:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvLabelProgress;->sDisableColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lletv/widget/LetvLabelProgress;->setFocusable(Z)V

    :goto_0
    iput-boolean p1, p0, Lletv/widget/LetvLabelProgress;->mIsFocused:Z

    return-void

    :cond_0
    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mNameText:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvLabelProgress;->sNormalColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mValueText:Landroid/widget/TextView;

    iget v1, p0, Lletv/widget/LetvLabelProgress;->sNormalColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lletv/widget/LetvLabelProgress;->setFocusable(Z)V

    goto :goto_0
.end method

.method public setFocus(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lletv/widget/LetvLabelProgress;->setFocusable(Z)V

    :goto_0
    iput-boolean p1, p0, Lletv/widget/LetvLabelProgress;->mIsFocused:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lletv/widget/LetvLabelProgress;->setFocusable(Z)V

    goto :goto_0
.end method

.method public setFocusValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    iput p1, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mValueText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mProgress:Lletv/widget/LetvSeekBar;

    invoke-direct {p0}, Lletv/widget/LetvLabelProgress;->transformValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lletv/widget/LetvSeekBar;->setSecondaryProgress(I)V

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mProgress:Lletv/widget/LetvSeekBar;

    invoke-direct {p0}, Lletv/widget/LetvLabelProgress;->transformValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lletv/widget/LetvSeekBar;->setProgress(I)V

    return-void
.end method

.method public setOnChangeListener(Lletv/widget/LetvLabelProgress$OnChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lletv/widget/LetvLabelProgress;->mListener:Lletv/widget/LetvLabelProgress$OnChangeListener;

    return-void
.end method

.method public setOnFocusChangeListener(Lletv/widget/LetvLabelProgress$OnFocusChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lletv/widget/LetvLabelProgress;->mFocusListener:Lletv/widget/LetvLabelProgress$OnFocusChangeListener;

    return-void
.end method

.method public setStep(I)V
    .locals 0
    .parameter "step"

    .prologue
    iput p1, p0, Lletv/widget/LetvLabelProgress;->mStep:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mNameText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    iput p1, p0, Lletv/widget/LetvLabelProgress;->mValue:I

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mValueText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lletv/widget/LetvLabelProgress;->mProgress:Lletv/widget/LetvSeekBar;

    invoke-direct {p0}, Lletv/widget/LetvLabelProgress;->transformValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lletv/widget/LetvSeekBar;->setSecondaryProgress(I)V

    return-void
.end method
