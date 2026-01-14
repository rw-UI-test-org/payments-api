package charge

type Charge struct {
	ID       string
	Amount   int64
	Currency string
}

func (c Charge) Valid() bool { return c.Amount > 0 && c.Currency != "" }

