.class final Landroid/icu/text/MessageFormat$AttributeAndPosition;
.super Ljava/lang/Object;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AttributeAndPosition"
.end annotation


# instance fields
.field private key:Ljava/text/AttributedCharacterIterator$Attribute;

.field private limit:I

.field private start:I

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 1

    .line 2615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2616
    sget-object v0, Landroid/icu/text/MessageFormat$Field;->ARGUMENT:Landroid/icu/text/MessageFormat$Field;

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->init(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 0

    .line 2619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2620
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->init(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$100(Landroid/icu/text/MessageFormat$AttributeAndPosition;)Ljava/text/AttributedCharacterIterator$Attribute;
    .locals 0

    .line 2611
    iget-object p0, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    return-object p0
.end method

.method static synthetic access$200(Landroid/icu/text/MessageFormat$AttributeAndPosition;)Ljava/lang/Object;
    .locals 0

    .line 2611
    iget-object p0, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->value:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Landroid/icu/text/MessageFormat$AttributeAndPosition;)I
    .locals 0

    .line 2611
    iget p0, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->start:I

    return p0
.end method

.method static synthetic access$400(Landroid/icu/text/MessageFormat$AttributeAndPosition;)I
    .locals 0

    .line 2611
    iget p0, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->limit:I

    return p0
.end method


# virtual methods
.method public init(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 0

    .line 2624
    iput-object p1, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    .line 2625
    iput-object p2, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->value:Ljava/lang/Object;

    .line 2626
    iput p3, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->start:I

    .line 2627
    iput p4, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->limit:I

    return-void
.end method
