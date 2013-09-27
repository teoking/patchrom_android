.class public Landroid/widget/LetvSettingSwitcher;
.super Landroid/widget/LinearLayout;
.source "LetvSettingSwitcher.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LetvSettingSwitcher$OnSettingChangedListener;
    }
.end annotation


# instance fields
.field private mAanimationRightIn:Landroid/view/animation/Animation;

.field private mAnimationLeftIn:Landroid/view/animation/Animation;

.field private mAnimationLeftOut:Landroid/view/animation/Animation;

.field private mAnimationRightOut:Landroid/view/animation/Animation;

.field private mCharSequences:[Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mFilp:Z

.field private mIndex:I

.field private mOnSettingChangedListener:Landroid/widget/LetvSettingSwitcher$OnSettingChangedListener;

.field private mTextSwitcher:Landroid/widget/TextSwitcher;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LetvSettingSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LetvSettingSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Landroid/widget/LetvSettingSwitcher;->mIndex:I

    iput-boolean v1, p0, Landroid/widget/LetvSettingSwitcher;->mFilp:Z

    iput-object p1, p0, Landroid/widget/LetvSettingSwitcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mContext:Landroid/content/Context;

    const v2, 0x10a003c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mAnimationLeftIn:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mContext:Landroid/content/Context;

    const v2, 0x10a003d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mAnimationLeftOut:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mContext:Landroid/content/Context;

    const v2, 0x10a004e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mAanimationRightIn:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mContext:Landroid/content/Context;

    const v2, 0x10a004f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mAnimationRightOut:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mAnimationLeftIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mAnimationLeftOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mAanimationRightIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mAnimationRightOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v1, 0x10900e4

    invoke-static {p1, v1, p0}, Landroid/widget/LetvSettingSwitcher;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x10203e7

    invoke-virtual {p0, v1}, Landroid/widget/LetvSettingSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mTextView:Landroid/widget/TextView;

    const v1, 0x10203e8

    invoke-virtual {p0, v1}, Landroid/widget/LetvSettingSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextSwitcher;

    iput-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v1, p0}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040575

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, lable:Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mCharSequences:[Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mCharSequences:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v2, p0, Landroid/widget/LetvSettingSwitcher;->mCharSequences:[Ljava/lang/CharSequence;

    iget v3, p0, Landroid/widget/LetvSettingSwitcher;->mIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v1, Landroid/widget/LetvSettingSwitcher$1;

    invoke-direct {v1, p0}, Landroid/widget/LetvSettingSwitcher$1;-><init>(Landroid/widget/LetvSettingSwitcher;)V

    invoke-virtual {p0, v1}, Landroid/widget/LetvSettingSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/LetvSettingSwitcher;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher;->mAanimationRightIn:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/LetvSettingSwitcher;)Landroid/widget/TextSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher;->mTextSwitcher:Landroid/widget/TextSwitcher;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/LetvSettingSwitcher;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher;->mAnimationLeftOut:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/LetvSettingSwitcher;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/widget/LetvSettingSwitcher;->mIndex:I

    return v0
.end method

.method static synthetic access$302(Landroid/widget/LetvSettingSwitcher;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/widget/LetvSettingSwitcher;->mIndex:I

    return p1
.end method

.method static synthetic access$308(Landroid/widget/LetvSettingSwitcher;)I
    .locals 2
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/widget/LetvSettingSwitcher;->mIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/widget/LetvSettingSwitcher;->mIndex:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/LetvSettingSwitcher;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher;->mCharSequences:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/LetvSettingSwitcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/widget/LetvSettingSwitcher;->setValue()V

    return-void
.end method

.method private setValue()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mCharSequences:[Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/LetvSettingSwitcher;->mIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher;->mOnSettingChangedListener:Landroid/widget/LetvSettingSwitcher$OnSettingChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher;->mCharSequences:[Ljava/lang/CharSequence;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher;->mOnSettingChangedListener:Landroid/widget/LetvSettingSwitcher$OnSettingChangedListener;

    iget v1, p0, Landroid/widget/LetvSettingSwitcher;->mIndex:I

    invoke-interface {v0, p0, v1}, Landroid/widget/LetvSettingSwitcher$OnSettingChangedListener;->onSettingChanged(Landroid/view/View;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/LetvSettingSwitcher;->mIndex:I

    return v0
.end method

.method public hideLabel()V
    .locals 3

    .prologue
    const/4 v1, -0x2

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x13

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v1, 0x96

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/TextSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public makeView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, -0x1

    iget-object v2, p0, Landroid/widget/LetvSettingSwitcher;->mContext:Landroid/content/Context;

    const v3, 0x10900f0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/LetvSettingSwitcher;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, view:Landroid/view/View;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v0, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/LetvSettingSwitcher;->mFilp:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/LetvSettingSwitcher;->mFilp:Z

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0, p1}, Landroid/widget/TextSwitcher;->setSelected(Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher;->mCharSequences:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/LetvSettingSwitcher;->mFilp:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mAnimationLeftIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mAnimationRightOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget v0, p0, Landroid/widget/LetvSettingSwitcher;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/LetvSettingSwitcher;->mIndex:I

    iget v0, p0, Landroid/widget/LetvSettingSwitcher;->mIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher;->mCharSequences:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/LetvSettingSwitcher;->mIndex:I

    :cond_2
    invoke-direct {p0}, Landroid/widget/LetvSettingSwitcher;->setValue()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public setEntry([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "strs"

    .prologue
    iput-object p1, p0, Landroid/widget/LetvSettingSwitcher;->mCharSequences:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setOnSettingChangedListener(Landroid/widget/LetvSettingSwitcher$OnSettingChangedListener;)V
    .locals 0
    .parameter "onSettingChangedListener"

    .prologue
    iput-object p1, p0, Landroid/widget/LetvSettingSwitcher;->mOnSettingChangedListener:Landroid/widget/LetvSettingSwitcher$OnSettingChangedListener;

    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher;->mCharSequences:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/widget/LetvSettingSwitcher;->mIndex:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher;->mCharSequences:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Landroid/widget/LetvSettingSwitcher;->mCharSequences:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    :cond_2
    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    iput p1, p0, Landroid/widget/LetvSettingSwitcher;->mIndex:I

    invoke-direct {p0}, Landroid/widget/LetvSettingSwitcher;->setValue()V

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 4
    .parameter "newValue"

    .prologue
    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mCharSequences:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mCharSequences:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mCharSequences:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p0, Landroid/widget/LetvSettingSwitcher;->mIndex:I

    iget-object v1, p0, Landroid/widget/LetvSettingSwitcher;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v2, p0, Landroid/widget/LetvSettingSwitcher;->mCharSequences:[Ljava/lang/CharSequence;

    iget v3, p0, Landroid/widget/LetvSettingSwitcher;->mIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .end local v0           #i:I
    :cond_0
    return-void

    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
